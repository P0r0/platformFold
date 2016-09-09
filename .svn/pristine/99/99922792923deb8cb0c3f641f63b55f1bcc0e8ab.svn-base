.class Lmobisocial/util/PlatformUtils$ContactsUploader;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/util/PlatformUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsUploader"
.end annotation


# static fields
.field static final CONTACT_IMPORT:Ljava/lang/String; = "contactImport"


# instance fields
.field mClient:Lmobisocial/omlib/client/LongdanClient;

.field mContext:Landroid/content/Context;

.field settings:Lmobisocial/omlib/db/entity/OMSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobisocial/omlib/client/LongdanClient;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lmobisocial/util/PlatformUtils$ContactsUploader;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lmobisocial/util/PlatformUtils$ContactsUploader;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 126
    return-void
.end method

.method private forcePostBatch(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/db/entity/OMIdentity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "batchToPost":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMIdentity;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 184
    iget-object v0, p0, Lmobisocial/util/PlatformUtils$ContactsUploader;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v1, Lmobisocial/util/PlatformUtils$ContactsUploader$2;

    invoke-direct {v1, p0, p1}, Lmobisocial/util/PlatformUtils$ContactsUploader$2;-><init>(Lmobisocial/util/PlatformUtils$ContactsUploader;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 204
    :cond_10
    return-void
.end method

.method private postBatchIfReady(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/db/entity/OMIdentity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "batchToPost":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMIdentity;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_b

    .line 208
    invoke-direct {p0, p1}, Lmobisocial/util/PlatformUtils$ContactsUploader;->forcePostBatch(Ljava/util/List;)V

    .line 210
    :cond_b
    return-void
.end method


# virtual methods
.method protected execute(Landroid/os/CancellationSignal;)Ljava/lang/Void;
    .registers 22
    .param p1, "cancellation"    # Landroid/os/CancellationSignal;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v3, Lmobisocial/util/PlatformUtils$ContactsUploader$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmobisocial/util/PlatformUtils$ContactsUploader$1;-><init>(Lmobisocial/util/PlatformUtils$ContactsUploader;)V

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 143
    const-wide/16 v16, 0x0

    .line 144
    .local v16, "previousCount":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    if-eqz v2, :cond_3e

    .line 145
    const-string v2, "Omlib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings isn\'t null! prevCount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    iget-object v5, v5, Lmobisocial/omlib/db/entity/OMSetting;->longValue:Ljava/lang/Long;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    iget-object v2, v2, Lmobisocial/omlib/db/entity/OMSetting;->longValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 148
    :cond_3e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v8, "batchedIdentities":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMIdentity;>;"
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "mimetype"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "data1"

    aput-object v3, v4, v2

    .line 150
    .local v4, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id > ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 151
    .local v9, "cur":Landroid/database/Cursor;
    :cond_70
    :goto_70
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-virtual/range {p1 .. p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_e8

    .line 152
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 153
    .local v12, "id":J
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 154
    .local v18, "type":Ljava/lang/String;
    const/4 v11, 0x0

    .line 156
    .local v11, "formattedIdentity":Lmobisocial/omlib/model/RawIdentity;
    :try_start_87
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 157
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 158
    .local v15, "phoneNo":Ljava/lang/String;
    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->PhoneNumber:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-static {v15, v2}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;Lmobisocial/omlib/model/RawIdentity$IdentityType;)Lmobisocial/omlib/model/RawIdentity;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9b} :catch_f2

    move-result-object v11

    .line 167
    .end local v15    # "phoneNo":Ljava/lang/String;
    :cond_9c
    :goto_9c
    if-eqz v11, :cond_70

    .line 168
    new-instance v14, Lmobisocial/omlib/db/entity/OMIdentity;

    invoke-direct {v14}, Lmobisocial/omlib/db/entity/OMIdentity;-><init>()V

    .line 169
    .local v14, "identity":Lmobisocial/omlib/db/entity/OMIdentity;
    invoke-virtual {v11}, Lmobisocial/omlib/model/RawIdentity;->asKey()[B

    move-result-object v2

    iput-object v2, v14, Lmobisocial/omlib/db/entity/OMIdentity;->identityHash:[B

    .line 170
    iput-wide v12, v14, Lmobisocial/omlib/db/entity/OMIdentity;->rawContactId:J

    .line 171
    iget-object v2, v11, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v2}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lmobisocial/omlib/db/entity/OMIdentity;->type:Ljava/lang/String;

    .line 172
    iget-object v2, v11, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    iput-object v2, v14, Lmobisocial/omlib/db/entity/OMIdentity;->value:Ljava/lang/String;

    .line 173
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmobisocial/util/PlatformUtils$ContactsUploader;->postBatchIfReady(Ljava/util/List;)V

    goto :goto_70

    .line 159
    .end local v14    # "identity":Lmobisocial/omlib/db/entity/OMIdentity;
    :cond_c0
    :try_start_c0
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 160
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "email":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9c

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 162
    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Email:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-static {v10, v2}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;Lmobisocial/omlib/model/RawIdentity$IdentityType;)Lmobisocial/omlib/model/RawIdentity;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_e6} :catch_f2

    move-result-object v11

    goto :goto_9c

    .line 177
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "formattedIdentity":Lmobisocial/omlib/model/RawIdentity;
    .end local v12    # "id":J
    .end local v18    # "type":Ljava/lang/String;
    :cond_e8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 178
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmobisocial/util/PlatformUtils$ContactsUploader;->forcePostBatch(Ljava/util/List;)V

    .line 179
    const/4 v2, 0x0

    return-object v2

    .line 165
    .restart local v11    # "formattedIdentity":Lmobisocial/omlib/model/RawIdentity;
    .restart local v12    # "id":J
    .restart local v18    # "type":Ljava/lang/String;
    :catch_f2
    move-exception v2

    goto :goto_9c
.end method
