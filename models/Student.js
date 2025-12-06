const mongoose = require('mongoose');

const studentSchema = new mongoose.Schema({
    firstName: {type: String, requred: true},
    lastName: {type: String, required: true},
    email: {type:String, required: true, unique: true},
    age: {type: Number},
    course: {type: String},
    dateRegistered: {type: Date, default: Date.now}
});

module.exports = mongoose.model('Student', studentSchema);