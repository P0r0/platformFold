.class Lmobisocial/omlib/client/ClientFeedUtils$2;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->getOrCreateFeedWithAccounts(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Ljava/util/List;)Lmobisocial/omlib/db/entity/OMFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/db/DatabaseCallable",
        "<",
        "Lmobisocial/omlib/db/entity/OMFeed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;

.field final synthetic val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

.field final synthetic val$givenAccounts:Ljava/util/List;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;Ljava/util/List;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 218
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$2;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$2;->val$givenAccounts:Ljava/util/List;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientFeedUtils$2;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lmobisocial/omlib/db/OMSQLiteHelper;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lmobisocial/omlib/client/ClientFeedUtils$2;->call(Lmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v0

    return-object v0
.end method

.method public call(Lmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;
    .registers 36
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->val$givenAccounts:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v8, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v28, v0

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static/range {v28 .. v28}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v21

    .line 224
    .local v21, "myAccount":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12e

    .line 225
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 226
    .local v4, "account":Ljava/lang/String;
    const/16 v26, 0x1

    .line 227
    .local v26, "requiredMemberCount":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_43

    .line 228
    add-int/lit8 v26, v26, 0x1

    .line 230
    :cond_43
    const-class v28, Lmobisocial/omlib/db/entity/OMAccount;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v23

    check-cast v23, Lmobisocial/omlib/db/entity/OMAccount;

    .line 231
    .local v23, "omAccount":Lmobisocial/omlib/db/entity/OMAccount;
    if-eqz v23, :cond_e0

    .line 232
    const-string v24, "accountId=?"

    .line 233
    .local v24, "query":Ljava/lang/String;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    iget-object v0, v0, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v25, v28

    .line 234
    .local v25, "queryArgs":[Ljava/lang/String;
    const-class v28, Lmobisocial/omlib/db/entity/OMFeedMember;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 235
    .local v12, "feedMembers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMFeedMember;>;"
    if-eqz v12, :cond_e0

    .line 236
    const/16 v18, 0x0

    .line 237
    .local v18, "match":Lmobisocial/omlib/db/entity/OMFeed;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_83
    :goto_83
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_dd

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmobisocial/omlib/db/entity/OMFeedMember;

    .line 238
    .local v11, "feedMember":Lmobisocial/omlib/db/entity/OMFeedMember;
    const-class v29, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v0, v11, Lmobisocial/omlib/db/entity/OMFeedMember;->feedId:Ljava/lang/Long;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v10

    check-cast v10, Lmobisocial/omlib/db/entity/OMFeed;

    .line 239
    .local v10, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v10, :cond_83

    iget-boolean v0, v10, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    move/from16 v29, v0

    if-eqz v29, :cond_83

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    move-object/from16 v29, v0

    iget-object v0, v10, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_83

    iget-wide v0, v10, Lmobisocial/omlib/db/entity/OMFeed;->memberCount:J

    move-wide/from16 v30, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v32, v0

    cmp-long v29, v30, v32

    if-nez v29, :cond_83

    .line 240
    if-eqz v18, :cond_da

    iget-wide v0, v10, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lmobisocial/omlib/db/entity/OMFeed;->renderableTime:J

    move-wide/from16 v32, v0

    cmp-long v29, v30, v32

    if-lez v29, :cond_83

    .line 241
    :cond_da
    move-object/from16 v18, v10

    goto :goto_83

    .line 245
    .end local v10    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v11    # "feedMember":Lmobisocial/omlib/db/entity/OMFeedMember;
    :cond_dd
    if-eqz v18, :cond_e0

    .line 296
    .end local v4    # "account":Ljava/lang/String;
    .end local v12    # "feedMembers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMFeedMember;>;"
    .end local v18    # "match":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v23    # "omAccount":Lmobisocial/omlib/db/entity/OMAccount;
    .end local v24    # "query":Ljava/lang/String;
    .end local v25    # "queryArgs":[Ljava/lang/String;
    .end local v26    # "requiredMemberCount":I
    :goto_df
    return-object v18

    .line 250
    .restart local v4    # "account":Ljava/lang/String;
    .restart local v23    # "omAccount":Lmobisocial/omlib/db/entity/OMAccount;
    .restart local v26    # "requiredMemberCount":I
    :cond_e0
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_109

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlib/client/ClientFeedUtils;->createFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Lmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v18

    goto :goto_df

    .line 254
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v4, v30, v31

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lmobisocial/omlib/client/ClientFeedUtils;->createFeedWithAccounts(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;[Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v18

    goto :goto_df

    .line 257
    .end local v4    # "account":Ljava/lang/String;
    .end local v23    # "omAccount":Lmobisocial/omlib/db/entity/OMAccount;
    .end local v26    # "requiredMemberCount":I
    :cond_12e
    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v22

    .line 259
    .local v22, "numOtherAccounts":I
    move/from16 v0, v22

    new-array v5, v0, [J

    .line 260
    .local v5, "accountIds":[J
    const/16 v20, 0x0

    .line 261
    .local v20, "missingAccount":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_13e
    move/from16 v0, v22

    if-ge v13, v0, :cond_15c

    .line 262
    const-class v28, Lmobisocial/omlib/db/entity/OMAccount;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/db/entity/OMAccount;

    .line 263
    .local v4, "account":Lmobisocial/omlib/db/entity/OMAccount;
    if-nez v4, :cond_1fe

    .line 264
    const-wide/16 v28, -0x1

    aput-wide v28, v5, v13

    .line 265
    const/16 v20, 0x1

    .line 271
    .end local v4    # "account":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_15c
    const/16 v28, 0x0

    aget-wide v16, v5, v28

    .line 272
    .local v16, "firstAccountId":J
    const-class v28, Lmobisocial/omlib/db/entity/OMFeedMember;

    const-string v29, "accountId=?"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 273
    .restart local v12    # "feedMembers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMFeedMember;>;"
    if-nez v20, :cond_20f

    if-eqz v12, :cond_20f

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_20f

    .line 275
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_18e
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_20f

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmobisocial/omlib/db/entity/OMFeedMember;

    .line 276
    .restart local v11    # "feedMember":Lmobisocial/omlib/db/entity/OMFeedMember;
    const/4 v9, 0x1

    .line 277
    .local v9, "allInFeed":Z
    iget-object v0, v11, Lmobisocial/omlib/db/entity/OMFeedMember;->feedId:Ljava/lang/Long;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 278
    .local v14, "feedid":J
    const-class v29, Lmobisocial/omlib/db/entity/OMFeed;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v14, v15}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v27

    check-cast v27, Lmobisocial/omlib/db/entity/OMFeed;

    .line 279
    .local v27, "thisFeed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v27, :cond_18e

    move-object/from16 v0, v27

    iget-wide v0, v0, Lmobisocial/omlib/db/entity/OMFeed;->memberCount:J

    move-wide/from16 v30, v0

    add-int/lit8 v29, v22, 0x1

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v32, v0

    cmp-long v29, v30, v32

    if-nez v29, :cond_18e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->equals(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_18e

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lmobisocial/omlib/db/entity/OMFeed;->hasWriteAccess:Z

    move/from16 v29, v0

    if-eqz v29, :cond_18e

    .line 282
    const/4 v13, 0x1

    :goto_1dd
    move/from16 v0, v22

    if-ge v13, v0, :cond_1f8

    .line 283
    aget-wide v6, v5, v13

    .line 284
    .local v6, "accountId":J
    const-class v29, Lmobisocial/omlib/db/entity/OMFeedMember;

    invoke-static {v6, v7, v14, v15}, Lmobisocial/omlib/client/ClientFeedUtils;->getFeedMemberRowKey(JJ)[B

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v19

    check-cast v19, Lmobisocial/omlib/db/entity/OMFeedMember;

    .line 285
    .local v19, "memberToCheck":Lmobisocial/omlib/db/entity/OMFeedMember;
    if-nez v19, :cond_20c

    .line 286
    const/4 v9, 0x0

    .line 290
    .end local v6    # "accountId":J
    .end local v19    # "memberToCheck":Lmobisocial/omlib/db/entity/OMFeedMember;
    :cond_1f8
    if-eqz v9, :cond_18e

    move-object/from16 v18, v27

    .line 291
    goto/16 :goto_df

    .line 268
    .end local v9    # "allInFeed":Z
    .end local v11    # "feedMember":Lmobisocial/omlib/db/entity/OMFeedMember;
    .end local v12    # "feedMembers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMFeedMember;>;"
    .end local v14    # "feedid":J
    .end local v16    # "firstAccountId":J
    .end local v27    # "thisFeed":Lmobisocial/omlib/db/entity/OMFeed;
    .restart local v4    # "account":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_1fe
    iget-object v0, v4, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    aput-wide v28, v5, v13

    .line 261
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_13e

    .line 282
    .end local v4    # "account":Lmobisocial/omlib/db/entity/OMAccount;
    .restart local v6    # "accountId":J
    .restart local v9    # "allInFeed":Z
    .restart local v11    # "feedMember":Lmobisocial/omlib/db/entity/OMFeedMember;
    .restart local v12    # "feedMembers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMFeedMember;>;"
    .restart local v14    # "feedid":J
    .restart local v16    # "firstAccountId":J
    .restart local v19    # "memberToCheck":Lmobisocial/omlib/db/entity/OMFeedMember;
    .restart local v27    # "thisFeed":Lmobisocial/omlib/db/entity/OMFeed;
    :cond_20c
    add-int/lit8 v13, v13, 0x1

    goto :goto_1dd

    .line 296
    .end local v6    # "accountId":J
    .end local v9    # "allInFeed":Z
    .end local v11    # "feedMember":Lmobisocial/omlib/db/entity/OMFeedMember;
    .end local v14    # "feedid":J
    .end local v19    # "memberToCheck":Lmobisocial/omlib/db/entity/OMFeedMember;
    .end local v27    # "thisFeed":Lmobisocial/omlib/db/entity/OMFeed;
    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientFeedUtils$2;->val$feedKind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    move-object/from16 v30, v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lmobisocial/omlib/client/ClientFeedUtils;->createFeedWithAccounts(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;[Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v18

    goto/16 :goto_df
.end method
