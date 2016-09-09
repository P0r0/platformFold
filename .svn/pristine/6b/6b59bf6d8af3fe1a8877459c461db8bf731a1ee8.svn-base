.class public Lmobisocial/omlib/client/ClientAppUtils;
.super Ljava/lang/Object;
.source "ClientAppUtils.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Omlib"


# instance fields
.field final mClient:Lmobisocial/omlib/client/LongdanClient;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 2
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAppUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 17
    return-void
.end method

.method private applySetting(Lmobisocial/omlib/db/entity/OMSetting;Ljava/lang/Object;)V
    .registers 4
    .param p1, "setting"    # Lmobisocial/omlib/db/entity/OMSetting;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object v0, p1, Lmobisocial/omlib/db/entity/OMSetting;->stringValue:Ljava/lang/String;

    .line 79
    iput-object v0, p1, Lmobisocial/omlib/db/entity/OMSetting;->booleanValue:Ljava/lang/Boolean;

    .line 80
    iput-object v0, p1, Lmobisocial/omlib/db/entity/OMSetting;->integerValue:Ljava/lang/Integer;

    .line 81
    iput-object v0, p1, Lmobisocial/omlib/db/entity/OMSetting;->longValue:Ljava/lang/Long;

    .line 82
    iput-object v0, p1, Lmobisocial/omlib/db/entity/OMSetting;->byteArrayValue:[B

    .line 83
    if-nez p2, :cond_e

    .line 96
    .end local p2    # "value":Ljava/lang/Object;
    :cond_d
    :goto_d
    return-void

    .line 85
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 86
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p1, Lmobisocial/omlib/db/entity/OMSetting;->stringValue:Ljava/lang/String;

    goto :goto_d

    .line 87
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_17
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p1, Lmobisocial/omlib/db/entity/OMSetting;->booleanValue:Ljava/lang/Boolean;

    goto :goto_d

    .line 89
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_20
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_29

    .line 90
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p1, Lmobisocial/omlib/db/entity/OMSetting;->integerValue:Ljava/lang/Integer;

    goto :goto_d

    .line 91
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_29
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_32

    .line 92
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p1, Lmobisocial/omlib/db/entity/OMSetting;->longValue:Ljava/lang/Long;

    goto :goto_d

    .line 93
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_32
    instance-of v0, p2, [B

    if-eqz v0, :cond_d

    .line 94
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    iput-object p2, p1, Lmobisocial/omlib/db/entity/OMSetting;->byteArrayValue:[B

    goto :goto_d
.end method


# virtual methods
.method public getBooleanSetting(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 20
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAppUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    const-class v2, Lmobisocial/omlib/db/entity/OMSetting;

    invoke-virtual {v1, v2, p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMSetting;

    .line 21
    .local v0, "setting":Lmobisocial/omlib/db/entity/OMSetting;
    if-eqz v0, :cond_16

    iget-object v1, v0, Lmobisocial/omlib/db/entity/OMSetting;->booleanValue:Ljava/lang/Boolean;

    if-eqz v1, :cond_16

    .line 22
    iget-object p2, v0, Lmobisocial/omlib/db/entity/OMSetting;->booleanValue:Ljava/lang/Boolean;

    .line 23
    .end local p2    # "defaultValue":Ljava/lang/Boolean;
    :cond_16
    return-object p2
.end method

.method public getByteArraySetting(Ljava/lang/String;)[B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAppUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    const-class v2, Lmobisocial/omlib/db/entity/OMSetting;

    invoke-virtual {v1, v2, p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMSetting;

    .line 28
    .local v0, "setting":Lmobisocial/omlib/db/entity/OMSetting;
    if-eqz v0, :cond_13

    .line 29
    iget-object v1, v0, Lmobisocial/omlib/db/entity/OMSetting;->byteArrayValue:[B

    .line 30
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getIntegerSetting(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 41
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAppUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    const-class v2, Lmobisocial/omlib/db/entity/OMSetting;

    invoke-virtual {v1, v2, p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMSetting;

    .line 42
    .local v0, "setting":Lmobisocial/omlib/db/entity/OMSetting;
    if-eqz v0, :cond_12

    .line 43
    iget-object p2, v0, Lmobisocial/omlib/db/entity/OMSetting;->integerValue:Ljava/lang/Integer;

    .line 44
    .end local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_12
    return-object p2
.end method

.method public getLongSetting(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 48
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAppUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    const-class v2, Lmobisocial/omlib/db/entity/OMSetting;

    invoke-virtual {v1, v2, p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMSetting;

    .line 49
    .local v0, "setting":Lmobisocial/omlib/db/entity/OMSetting;
    if-eqz v0, :cond_12

    .line 50
    iget-object p2, v0, Lmobisocial/omlib/db/entity/OMSetting;->longValue:Ljava/lang/Long;

    .line 51
    .end local p2    # "defaultValue":Ljava/lang/Long;
    :cond_12
    return-object p2
.end method

.method public getStringSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAppUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    const-class v2, Lmobisocial/omlib/db/entity/OMSetting;

    invoke-virtual {v1, v2, p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMSetting;

    .line 35
    .local v0, "setting":Lmobisocial/omlib/db/entity/OMSetting;
    if-eqz v0, :cond_12

    .line 36
    iget-object p2, v0, Lmobisocial/omlib/db/entity/OMSetting;->stringValue:Ljava/lang/String;

    .line 37
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_12
    return-object p2
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAppUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/omlib/client/ClientAppUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lmobisocial/omlib/client/ClientAppUtils$1;-><init>(Lmobisocial/omlib/client/ClientAppUtils;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 62
    return-void
.end method

.method public setSettingOnDbThread(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 65
    const-class v1, Lmobisocial/omlib/db/entity/OMSetting;

    invoke-virtual {p1, v1, p3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMSetting;

    .line 66
    .local v0, "setting":Lmobisocial/omlib/db/entity/OMSetting;
    if-nez v0, :cond_18

    .line 67
    new-instance v0, Lmobisocial/omlib/db/entity/OMSetting;

    .end local v0    # "setting":Lmobisocial/omlib/db/entity/OMSetting;
    invoke-direct {v0}, Lmobisocial/omlib/db/entity/OMSetting;-><init>()V

    .line 68
    .restart local v0    # "setting":Lmobisocial/omlib/db/entity/OMSetting;
    iput-object p3, v0, Lmobisocial/omlib/db/entity/OMSetting;->key:Ljava/lang/String;

    .line 69
    invoke-direct {p0, v0, p4}, Lmobisocial/omlib/client/ClientAppUtils;->applySetting(Lmobisocial/omlib/db/entity/OMSetting;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 75
    :goto_17
    return-void

    .line 72
    :cond_18
    invoke-direct {p0, v0, p4}, Lmobisocial/omlib/client/ClientAppUtils;->applySetting(Lmobisocial/omlib/db/entity/OMSetting;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_17
.end method
