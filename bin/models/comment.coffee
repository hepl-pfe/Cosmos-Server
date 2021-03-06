###
    Cosmos-Server
    /bin/models/comment.coffee ## Comment model
    Started Aug. 6, 2016
###

module.exports = ( oSequelize, DataTypes ) ->
    oColumns =
        uuid:
            type: DataTypes.UUID,
            field: "id",
            unique: true
            primaryKey: true
        authorId:
            type: DataTypes.UUID,
            field: "author_id"
        text:
            type: DataTypes.TEXT,
            field: "text"
        x:
            type: DataTypes.FLOAT
            field: "x"
        y:
            type: DataTypes.FLOAT
            field: "y"

    oProperties =
        tablename: "comments",
        paranoid: true

    return oSequelize.define "comments", oColumns, oProperties
