import { initializeApp } from 'firebase/app'
import {
  getFirestore, collection, getDocs, onSnapshot,
  addDoc, deleteDoc, doc,
  query, where,
  orderBy, serverTimestamp,
  getDoc, updateDoc
} from 'firebase/firestore'
import {
  getAuth,
  createUserWithEmailAndPassword,
  signOut, signInWithEmailAndPassword,
  onAuthStateChanged
} from 'firebase/auth'

const firebaseConfig = {
  apiKey: "AIzaSyBWin_Ya2AxpYJUcSZivymlOwEpJONU4bY",
  authDomain: "basket-ball-fm9a4f.firebaseapp.com",
  projectId: "basket-ball-fm9a4f",
  storageBucket: "basket-ball-fm9a4f.appspot.com",
  messagingSenderId: "77124093482",
  appId: "1:77124093482:web:8acbaa5e728e0433c42553"
};

// init firebase
initializeApp(firebaseConfig)

// Init Services
const db = getFirestore()
const auth = getAuth()

// Collection Ref
const colRef = collection(db, 'books')

/// Queries
// const q = query(colRef, where("author", "==", "george orwell"), orderBy('title', 'desc'))
const q = query(colRef, orderBy('createdAt', 'asc'))

/// Get Collection Data
// getDocs(colRef)
//   .then(snapshot => {
//     // console.log(snapshot.docs)
//     let books = []
//     snapshot.docs.forEach(doc => {
//       books.push({ ...doc.data(), id: doc.id })
//     })
//     console.log(books)
//   })
//   .catch(err => {
//     console.log(err.message)
//   })

/// Real Time Collection Data
// onSnapshot(colRef, (snapshot) => {
const unsubCol = onSnapshot(q, (snapshot) => {
  let books = []
  snapshot.docs.forEach(doc => {
    books.push({ ...doc.data(), id: doc.id })
  })
  console.log(books)
})

// Adding Documents
const addBookForm = document.querySelector('.add')
addBookForm.addEventListener('submit', (e) => {
  e.preventDefault()

    addDoc(colRef, {
      title: addBookForm.title.value,
      author: addBookForm.author.value,
      createdAt: serverTimestamp()
    })
      .then(() => {
        addBookForm.reset()
      })
      .catch((error) => {
        console.error("Error adding document: ", error);
      });

})

// Deleting Documents
const deleteBookForm = document.querySelector('.delete')
deleteBookForm.addEventListener('submit', (e) => {
  e.preventDefault()

  const docRef = doc(db, 'books', deleteBookForm.id.value)
  deleteDoc(docRef)
    .then( () => {
      deleteBookForm.reset()
    })
  
})

// Get a single document
const docRef = doc(db, 'books', 'CW5L0gqX9tY2s5O7EHl5')

// getDoc(docRef)
//   .then((doc) => {
//     console.log(doc.data(), doc.id)
//   })

const unsubDoc = onSnapshot(docRef, (doc) => {
  console.log(doc.data(), doc.id)
})

// Updating Documents
const updateForm = document.querySelector('.update')
updateForm.addEventListener('submit', (e)=>{
  e.preventDefault()

  const docRef = doc(db, "books", updateForm.id.value)
  updateDoc(docRef, {
    title: 'updated title'
    // title: updateForm.title.value,
    // author: updateForm.author.value
  })
    .then(() => {
      updateForm.reset()
    })

})

// Signing user up
const signupForm = document.querySelector(".signup")
signupForm.addEventListener('submit', (e) => {
  e.preventDefault()

  const email = signupForm.email.value
  const password = signupForm.password.value
  createUserWithEmailAndPassword(auth, email, password)
    .then((cred) => {
      console.log('User created: ', cred.user)
      signupForm.reset()
    })
    .catch((err) => {
      console.log(err.message)
    })

})

// Logging in and out

const loginForm = document.querySelector('.login')
loginForm.addEventListener('submit', (e)=>{
  e.preventDefault()
  const email = loginForm.email.value
  const password = loginForm.password.value
  signInWithEmailAndPassword(auth, email, password)
    .then((cred) =>{
      console.log(cred.user.email, 'user logged in')
      loginForm.reset()
    })
    .catch((err)=>{
      console.log(err.message)
    })
  
})

const logoutButton = document.querySelector('.logout')
logoutButton.addEventListener('click', () => {  
  signOut(auth)
    .then(() => {
      console.log('user logged out')
    })
    .catch((err) =>{
      console.log(err.message)
    })
})

// Subscribe to auth changes
const unsubAuth = onAuthStateChanged(auth, (user) => {
  console.log('user status changed', user)
})


// unsubscribe from changes (auth & db)
const unsubButton = document.querySelector('.unsub')
unsubButton.addEventListener('click', () => {
  console.log('unsubscribing')
  unsubCol()
  unsubDoc()
  unsubAuth()
})