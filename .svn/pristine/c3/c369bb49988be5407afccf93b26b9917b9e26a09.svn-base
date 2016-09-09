.class public Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;
.super Ljava/lang/Object;
.source "OmlibContentProvider.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/NotificationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentNotificationProvider"
.end annotation


# instance fields
.field mAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mBatching:Z

.field final mContext:Landroid/content/Context;

.field mFeedMemberFeeds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mFeeds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mObjectsChanged:Z

.field mPushedObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmobisocial/omlib/db/entity/OMObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mObjectsChanged:Z

    .line 261
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mContext:Landroid/content/Context;

    .line 262
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mFeeds:Ljava/util/Set;

    .line 263
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mFeedMemberFeeds:Ljava/util/Set;

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mAccounts:Ljava/util/Set;

    .line 265
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mPushedObjects:Ljava/util/Set;

    .line 266
    return-void
.end method


# virtual methods
.method public beginNotificationBatch()V
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mBatching:Z

    .line 271
    return-void
.end method

.method public declared-synchronized queueAccountChangedEvent(Lmobisocial/omlib/db/entity/OMAccount;)V
    .registers 4
    .param p1, "account"    # Lmobisocial/omlib/db/entity/OMAccount;

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mAccounts:Ljava/util/Set;

    iget-object v1, p1, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    iget-boolean v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mBatching:Z

    if-nez v0, :cond_f

    .line 305
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->releaseNotifications()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 306
    :cond_f
    monitor-exit p0

    return-void

    .line 303
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueFeedChangedEvent(Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 6
    .param p1, "feed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mFeeds:Ljava/util/Set;

    iget-wide v2, p1, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    iget-boolean v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mBatching:Z

    if-nez v0, :cond_13

    .line 277
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->releaseNotifications()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 278
    :cond_13
    monitor-exit p0

    return-void

    .line 275
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueFeedMemberChangedEvent(Lmobisocial/omlib/db/entity/OMFeedMember;)V
    .registers 4
    .param p1, "member"    # Lmobisocial/omlib/db/entity/OMFeedMember;

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mFeedMemberFeeds:Ljava/util/Set;

    iget-object v1, p1, Lmobisocial/omlib/db/entity/OMFeedMember;->feedId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    iget-boolean v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mBatching:Z

    if-nez v0, :cond_f

    .line 298
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->releaseNotifications()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 299
    :cond_f
    monitor-exit p0

    return-void

    .line 296
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueObjectChangedEvent()V
    .registers 2

    .prologue
    .line 289
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mObjectsChanged:Z

    .line 290
    iget-boolean v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mBatching:Z

    if-nez v0, :cond_b

    .line 291
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->releaseNotifications()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 292
    :cond_b
    monitor-exit p0

    return-void

    .line 289
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueObjectPushedEvent(Lmobisocial/omlib/db/entity/OMObject;)V
    .registers 3
    .param p1, "object"    # Lmobisocial/omlib/db/entity/OMObject;

    .prologue
    .line 282
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mPushedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    iget-boolean v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mBatching:Z

    if-nez v0, :cond_d

    .line 284
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->releaseNotifications()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 285
    :cond_d
    monitor-exit p0

    return-void

    .line 282
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseNotifications()V
    .registers 21

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mContext:Landroid/content/Context;

    .line 311
    .local v3, "ctx":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 312
    .local v2, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mFeeds:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_12
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_30

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 313
    .local v4, "feedId":J
    invoke-static {v3, v4, v5}, Lmobisocial/omlib/model/OmletModel$Feeds;->uriForFeed(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_12

    .line 315
    .end local v4    # "feedId":J
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mFeeds:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_49

    .line 316
    invoke-static {v3}, Lmobisocial/omlib/model/OmletModel$Chats;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 318
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mFeedMemberFeeds:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_53
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_71

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 319
    .local v6, "fm":J
    invoke-static {v3, v6, v7}, Lmobisocial/omlib/model/OmletModel$FeedMembers;->uriForFeed(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_53

    .line 321
    .end local v6    # "fm":J
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mAccounts:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_99

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 322
    .local v10, "id":J
    invoke-static {v3, v10, v11}, Lmobisocial/omlib/model/OmletModel$Accounts;->uriForAccount(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_7b

    .line 324
    .end local v10    # "id":J
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mPushedObjects:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_10a

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mPushedObjects:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v13, v0, [J

    .line 326
    .local v13, "objectIds":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mPushedObjects:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    .line 327
    .local v14, "objectTypes":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 328
    .local v8, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mPushedObjects:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_cc
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_eb

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmobisocial/omlib/db/entity/OMObject;

    .line 329
    .local v9, "o":Lmobisocial/omlib/db/entity/OMObject;
    iget-object v0, v9, Lmobisocial/omlib/db/entity/OMObject;->id:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v13, v8

    .line 330
    iget-object v0, v9, Lmobisocial/omlib/db/entity/OMObject;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v14, v8

    .line 331
    add-int/lit8 v8, v8, 0x1

    .line 332
    goto :goto_cc

    .line 333
    .end local v9    # "o":Lmobisocial/omlib/db/entity/OMObject;
    :cond_eb
    new-instance v15, Landroid/content/Intent;

    const-string v16, "mobisocial.omlib.action.OBJECT_PUSHED"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v15, "push":Landroid/content/Intent;
    const-string v16, "mobisocial.omlib.extra.OBJECT_ID_ARRAY"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 335
    const-string v16, "mobisocial.omlib.extra.OBJECT_TYPE_ARRAY"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {v3, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    .end local v8    # "i":I
    .end local v13    # "objectIds":[J
    .end local v14    # "objectTypes":[Ljava/lang/String;
    .end local v15    # "push":Landroid/content/Intent;
    :cond_10a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mObjectsChanged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_141

    .line 340
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    invoke-static {v3}, Lmobisocial/omlib/model/OmletModel$Objects;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 341
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    invoke-static {v3}, Lmobisocial/omlib/model/OmletModel$ObjectsWithSender;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 342
    new-instance v12, Landroid/content/Intent;

    const-string v16, "mobisocial.omlib.action.OBJECT_RECEIVED"

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v12, "objectChanged":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    .end local v12    # "objectChanged":Landroid/content/Intent;
    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mFeeds:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->clear()V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mFeedMemberFeeds:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->clear()V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mAccounts:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->clear()V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mPushedObjects:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->clear()V

    .line 350
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mObjectsChanged:Z

    .line 351
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;->mBatching:Z

    .line 352
    return-void
.end method
