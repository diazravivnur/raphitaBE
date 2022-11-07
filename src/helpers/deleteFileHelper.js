const fs = require("fs");

exports.deleteFileUnlink = (data) => {
  fs.unlink("./uploads/" + data, function (err) {
    if (err) {
      console.log("Delete File", "Delete File Helper", "ERROR : ", err);
    }
    console.log(`File ${data} has Been deleted!`);
  });
};
