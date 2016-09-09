.class public Lmobisocial/omlib/db/util/TableMapping;
.super Ljava/lang/Object;
.source "TableMapping.java"


# instance fields
.field public final columnMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryLookupQuery:Ljava/lang/String;

.field public mSecondaryKeyLookupQuery:Ljava/lang/String;

.field public final modificationTimestamp:Ljava/lang/reflect/Field;

.field public final modificationTimestampColumn:Ljava/lang/String;

.field public final nullColumnHack:Ljava/lang/String;

.field public final primaryKey:Ljava/lang/reflect/Field;

.field public final primaryKeyColumn:Ljava/lang/String;

.field public final secondaryKey:Ljava/lang/reflect/Field;

.field public final secondaryKeyColumn:Ljava/lang/String;

.field public final secondaryKeyQuickIndex:Ljava/lang/reflect/Field;

.field public final secondaryKeyQuickIndexColumn:Ljava/lang/String;

.field public final table:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .registers 14
    .param p1, "table"    # Ljava/lang/String;
    .param p3, "pkField"    # Ljava/lang/reflect/Field;
    .param p4, "pkCol"    # Ljava/lang/String;
    .param p5, "skField"    # Ljava/lang/reflect/Field;
    .param p6, "skCol"    # Ljava/lang/String;
    .param p7, "skqiField"    # Ljava/lang/reflect/Field;
    .param p8, "skqiCol"    # Ljava/lang/String;
    .param p9, "mtField"    # Ljava/lang/reflect/Field;
    .param p10, "mtCol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lmobisocial/omlib/db/util/TableMapping;->columnMapping:Ljava/util/Map;

    .line 41
    iput-object p3, p0, Lmobisocial/omlib/db/util/TableMapping;->primaryKey:Ljava/lang/reflect/Field;

    .line 42
    iput-object p4, p0, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKey:Ljava/lang/reflect/Field;

    .line 44
    iput-object p6, p0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyColumn:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyQuickIndex:Ljava/lang/reflect/Field;

    .line 46
    iput-object p8, p0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyQuickIndexColumn:Ljava/lang/String;

    .line 47
    iput-object p9, p0, Lmobisocial/omlib/db/util/TableMapping;->modificationTimestamp:Ljava/lang/reflect/Field;

    .line 48
    iput-object p10, p0, Lmobisocial/omlib/db/util/TableMapping;->modificationTimestampColumn:Ljava/lang/String;

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "nch":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "nch":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 53
    .restart local v1    # "nch":Ljava/lang/String;
    iget-object v2, p0, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 57
    :cond_34
    iput-object v1, p0, Lmobisocial/omlib/db/util/TableMapping;->nullColumnHack:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private dbQueryArg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 95
    instance-of v0, p1, [B

    if-eqz v0, :cond_19

    .line 96
    const-string v0, "X\'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p1}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_18
    return-object v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method


# virtual methods
.method public getLookupByKeyQuery(Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    iget-object v1, p0, Lmobisocial/omlib/db/util/TableMapping;->mSecondaryKeyLookupQuery:Ljava/lang/String;

    if-nez v1, :cond_36

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyQuickIndex:Ljava/lang/reflect/Field;

    if-nez v1, :cond_49

    .line 80
    iget-object v1, p0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_2b
    const-string v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlib/db/util/TableMapping;->mSecondaryKeyLookupQuery:Ljava/lang/String;

    .line 87
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_36
    iget-object v1, p0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyQuickIndexColumn:Ljava/lang/String;

    if-nez v1, :cond_61

    .line 88
    iget-object v1, p0, Lmobisocial/omlib/db/util/TableMapping;->mSecondaryKeyLookupQuery:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lmobisocial/omlib/db/util/TableMapping;->dbQueryArg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    :goto_48
    return-object v1

    .line 82
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    :cond_49
    iget-object v1, p0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyQuickIndexColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=%d AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 90
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_61
    iget-object v1, p0, Lmobisocial/omlib/db/util/TableMapping;->mSecondaryKeyLookupQuery:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0, p1}, Lmobisocial/omlib/db/util/TableMapping;->dbQueryArg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_48
.end method

.method public getPrimaryLookupArgs(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 69
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 70
    .local v0, "lookupArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    return-object v0
.end method

.method public getPrimaryLookupQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lmobisocial/omlib/db/util/TableMapping;->mPrimaryLookupQuery:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 62
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/db/util/TableMapping;->mPrimaryLookupQuery:Ljava/lang/String;

    .line 64
    :cond_14
    iget-object v0, p0, Lmobisocial/omlib/db/util/TableMapping;->mPrimaryLookupQuery:Ljava/lang/String;

    return-object v0
.end method
