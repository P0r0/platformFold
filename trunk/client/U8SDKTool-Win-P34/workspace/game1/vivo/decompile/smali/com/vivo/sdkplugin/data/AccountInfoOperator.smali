.class public Lcom/vivo/sdkplugin/data/AccountInfoOperator;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.vivo.sdkplugin.accountinfo/accountinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method private a(Landroid/content/ContentValues;)V
    .registers 4

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->isAccountInfoEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->deleteAccountInfo()I

    :cond_9
    iget-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public deleteAccountInfo()I
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "AccountInfoOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteNum="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public insertValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public isAccountInfoEmpty()Z
    .registers 9

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->a:Landroid/net/Uri;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3b

    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_23
    .catchall {:try_start_16 .. :try_end_19} :catchall_32

    move-result v0

    if-lez v0, :cond_3b

    move v0, v7

    :goto_1d
    if-eqz v1, :cond_22

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_22
    :goto_22
    return v0

    :catch_23
    move-exception v0

    :try_start_24
    const-string v2, "AccountInfoOperator"

    const-string v3, "Cannot process all local msgs "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_32

    if-eqz v1, :cond_39

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_22

    :catchall_32
    move-exception v0

    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v0

    :cond_39
    move v0, v6

    goto :goto_22

    :cond_3b
    move v0, v6

    goto :goto_1d
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    iget-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->a:Landroid/net/Uri;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_25

    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_2b
    .catchall {:try_start_14 .. :try_end_24} :catchall_39

    move-result-object v3

    :cond_25
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2a
    :goto_2a
    return-object v3

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string v2, "AccountInfoOperator"

    const-string v4, "Cannot process all local msgs "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_39

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2a

    :catchall_39
    move-exception v0

    if-eqz v1, :cond_3f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
.end method

.method public queryValues(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->a:Landroid/net/Uri;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_59

    :try_start_14
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_59

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_3d
    .catchall {:try_start_14 .. :try_end_25} :catchall_4d

    const/4 v0, 0x0

    :goto_26
    :try_start_26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_54
    .catchall {:try_start_26 .. :try_end_29} :catchall_4d

    move-result v3

    if-lt v0, v3, :cond_33

    move-object v0, v1

    :goto_2d
    if-eqz v2, :cond_32

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_32
    :goto_32
    return-object v0

    :cond_33
    :try_start_33
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_54
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4d

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :catch_3d
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_40
    :try_start_40
    const-string v3, "AccountInfoOperator"

    const-string v4, "Cannot process all local msgs "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4d

    if-eqz v2, :cond_32

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_32

    :catchall_4d
    move-exception v0

    if-eqz v2, :cond_53

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_53
    throw v0

    :catch_54
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_40

    :cond_59
    move-object v0, v3

    goto :goto_2d
.end method

.method public saveValues(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->a(Landroid/content/ContentValues;)V

    :cond_f
    return-void
.end method

.method public saveValues(Ljava/util/Hashtable;)V
    .registers 6

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/data/AccountInfoOperator;->a(Landroid/content/ContentValues;)V

    goto :goto_6

    :cond_1a
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public updateValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public updateValues(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3

    return-void
.end method
