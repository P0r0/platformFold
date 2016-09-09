.class Lmobisocial/util/PlatformUtils$ContactsUploader$2;
.super Ljava/lang/Object;
.source "PlatformUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/util/PlatformUtils$ContactsUploader;->forcePostBatch(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

.field final synthetic val$batchToPost:Ljava/util/List;


# direct methods
.method constructor <init>(Lmobisocial/util/PlatformUtils$ContactsUploader;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/util/PlatformUtils$ContactsUploader;

    .prologue
    .line 184
    iput-object p1, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$2;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    iput-object p2, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$2;->val$batchToPost:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 13
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v2, "ldIdentities":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDIdentityHash;>;"
    iget-object v5, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$2;->val$batchToPost:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMIdentity;

    .line 190
    .local v1, "identity":Lmobisocial/omlib/db/entity/OMIdentity;
    invoke-virtual {p1, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 191
    iget-object v6, v1, Lmobisocial/omlib/db/entity/OMIdentity;->value:Ljava/lang/String;

    iget-object v7, v1, Lmobisocial/omlib/db/entity/OMIdentity;->type:Ljava/lang/String;

    invoke-static {v7}, Lmobisocial/omlib/model/RawIdentity;->typeForString(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity$IdentityType;

    move-result-object v7

    invoke-static {v6, v7}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;Lmobisocial/omlib/model/RawIdentity$IdentityType;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v3

    .line 192
    .local v3, "rawIdentity":Lmobisocial/omlib/model/RawIdentity;
    invoke-virtual {v3}, Lmobisocial/omlib/model/RawIdentity;->toHashedIdentity()Lmobisocial/longdan/LDProtocols$LDIdentityHash;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 194
    .end local v1    # "identity":Lmobisocial/omlib/db/entity/OMIdentity;
    .end local v3    # "rawIdentity":Lmobisocial/omlib/model/RawIdentity;
    :cond_2e
    new-instance v4, Lmobisocial/longdan/LDProtocols$LDUploadAddressBookEntriesRequest;

    invoke-direct {v4}, Lmobisocial/longdan/LDProtocols$LDUploadAddressBookEntriesRequest;-><init>()V

    .line 195
    .local v4, "uploadAddressBookEntriesRequest":Lmobisocial/longdan/LDProtocols$LDUploadAddressBookEntriesRequest;
    iput-object v2, v4, Lmobisocial/longdan/LDProtocols$LDUploadAddressBookEntriesRequest;->IdentityHashes:Ljava/util/List;

    .line 196
    new-instance v0, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-direct {v0, v4}, Lmobisocial/omlib/jobs/ControlMessageJobHandler;-><init>(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 197
    .local v0, "controlMessageJobHandler":Lmobisocial/omlib/jobs/ControlMessageJobHandler;
    iget-object v5, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$2;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    iget-object v5, v5, Lmobisocial/util/PlatformUtils$ContactsUploader;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v5}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, p1, p2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 198
    iget-object v5, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$2;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    iget-object v6, v5, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    iget-object v5, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$2;->val$batchToPost:Ljava/util/List;

    iget-object v7, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$2;->val$batchToPost:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobisocial/omlib/db/entity/OMIdentity;

    iget-wide v8, v5, Lmobisocial/omlib/db/entity/OMIdentity;->rawContactId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v6, Lmobisocial/omlib/db/entity/OMSetting;->longValue:Ljava/lang/Long;

    .line 199
    iget-object v5, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$2;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    iget-object v5, v5, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    invoke-virtual {p1, v5}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 200
    iget-object v5, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$2;->val$batchToPost:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 201
    return-void
.end method
