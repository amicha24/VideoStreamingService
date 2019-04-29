const sql = require('mssql')

async() => {
    try {
        await sql.connect('mssql://sa:Siresylla@10@localhost/VideoStreamingService')
        const result = await sql.query `select * from SALES.SUBSCRIBERS`
        console.log(result)
    } catch (err) {
        // ... error checks
        console.log(err);
    }
}