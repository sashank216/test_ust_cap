using{ust.reuse as reuse} from './reuse';
using{cuid,managed,temporal} from '@sap/cds/common';
namespace ust.demo;

context master {
    entity student: reuse.address {
        key id : reuse.Guid;
        nameFirst : String(30);
        nameLast : String(30);
        age: Integer;
        //foreign key @runtime the column name will be the class_id
        class : Association to semester
    };

    entity semester {
        key id : reuse.Guid;
        name : String(40);
        specification: String(30);
        marks : Integer;
        hod: String(30);
    };

    entity book {
        key no : Integer;
        name : localized String(30);
        author : String(30);

    };

    
}

context transaction {
    entity subs: cuid, managed,temporal {
        student: Association to master.student;
        book: Association to master.book;

    }
}