const { loadFirestoreRules, initializeTestApp, initializeAdminApp } = require('@firebase/rules-unit-testing');
const { readFileSync } = require('fs');

module.exports.setup = async (auth, data) => {
    const projectId = `fireship-dev-123456`;
    const app = initializeTestApp({
        projectId,
        auth
    });

    const db = app.firestore();

    // Write mock documents before rules
    if (data) {
        const admin = initializeAdminApp({
            projectId,
        });

        for (const key in data){
            const ref = admin.firestore().doc(key);
            await ref.set(data[key]);
        }
    }

    // Applying rules
    await loadFirestoreRules({
        projectId,
        rules: readFileSync('firestore.rules', 'utf8')
    });

    return db;
};

module.exports.teardown = async () => {
    Promise.all(firebase.apps().map(app => app.delete()));
    await clearFirestoreData();

};