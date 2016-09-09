.class public Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientMessagingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notifications"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;,
        Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    }
.end annotation


# instance fields
.field final mMessageDeliveryListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lmobisocial/omlib/interfaces/MessageDeliveryListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mObjectBlobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final mSendableReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobisocial/omlib/client/ClientMessagingUtils;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientMessagingUtils;

    .prologue
    .line 186
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mObjectBlobMap:Ljava/util/Map;

    .line 221
    return-void
.end method

.method static synthetic access$200(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;J)V
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;
    .param p1, "x1"    # J

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->checkDeliveryComplete(J)V

    return-void
.end method

.method private checkDeliveryComplete(J)V
    .registers 10
    .param p1, "objectId"    # J

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "complete":Z
    iget-object v3, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    monitor-enter v3

    .line 400
    :try_start_4
    iget-object v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    .line 401
    .local v1, "r":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    if-nez v1, :cond_31

    .line 402
    const-string v2, "Omlib-msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing sendable reference for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_43

    .line 407
    if-eqz v0, :cond_30

    .line 408
    invoke-direct {p0, v1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyDeliveryComplete(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;)V

    .line 410
    :cond_30
    return-void

    .line 404
    :cond_31
    :try_start_31
    iget v2, v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->blobTransfersComplete:I

    iget-object v4, v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->attachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_41

    iget-boolean v2, v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->objectSent:Z

    if-eqz v2, :cond_41

    const/4 v0, 0x1

    :goto_40
    goto :goto_2a

    :cond_41
    const/4 v0, 0x0

    goto :goto_40

    .line 406
    .end local v1    # "r":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_43

    throw v2
.end method

.method private findListenersInterestedInBlob([B)Ljava/util/List;
    .registers 22
    .param p1, "blobHash"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    monitor-enter v15

    .line 463
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mObjectBlobMap:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_8b

    .line 464
    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mObjectBlobMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    .line 465
    .local v12, "objectsWithBlob":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v12, :cond_23

    .line 466
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v16
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_88

    :try_start_21
    monitor-exit v15
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_8b

    .line 510
    :goto_22
    return-object v6

    .line 467
    :cond_23
    :try_start_23
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v6, "interested":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2c
    :goto_2c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 469
    .local v11, "objectId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 470
    .local v8, "ms1":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 471
    .local v9, "ms2":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    const/4 v13, 0x0

    .line 472
    .local v13, "r":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_5c
    .catchall {:try_start_23 .. :try_end_5c} :catchall_88

    .line 473
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    move-object v13, v0

    .line 474
    monitor-exit v18
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_8e

    .line 475
    if-nez v13, :cond_91

    .line 476
    :try_start_6b
    const-string v14, "Omlib-msg"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Missing sendable reference for objectId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 511
    .end local v6    # "interested":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;>;"
    .end local v8    # "ms1":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    .end local v9    # "ms2":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    .end local v11    # "objectId":Ljava/lang/Long;
    .end local v12    # "objectsWithBlob":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v13    # "r":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    :catchall_88
    move-exception v14

    monitor-exit v16
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v14

    .line 512
    :catchall_8b
    move-exception v14

    monitor-exit v15
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8b

    throw v14

    .line 474
    .restart local v6    # "interested":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;>;"
    .restart local v8    # "ms1":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    .restart local v9    # "ms2":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    .restart local v11    # "objectId":Ljava/lang/Long;
    .restart local v12    # "objectsWithBlob":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v13    # "r":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    :catchall_8e
    move-exception v14

    :try_start_8f
    monitor-exit v18
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw v14

    .line 479
    :cond_91
    if-eqz v8, :cond_99

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a1

    :cond_99
    if-eqz v9, :cond_2c

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2c

    .line 481
    :cond_a1
    const/4 v2, -0x1

    .line 482
    .local v2, "bi":I
    iget-object v14, v13, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->attachments:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    .line 483
    .local v7, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a9
    if-ge v4, v7, :cond_bc

    .line 484
    iget-object v14, v13, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->attachments:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 485
    .local v3, "hash":[B
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_ca

    .line 486
    move v2, v4

    .line 490
    .end local v3    # "hash":[B
    :cond_bc
    const/4 v14, -0x1

    if-ne v2, v14, :cond_cd

    .line 491
    const-string v14, "Omlib-msg"

    const-string v18, "Failed to find attachment for sendable"

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 483
    .restart local v3    # "hash":[B
    :cond_ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 495
    .end local v3    # "hash":[B
    :cond_cd
    if-eqz v8, :cond_d5

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f5

    .line 496
    :cond_d5
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 503
    .local v10, "ms3":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    :goto_da
    new-instance v5, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Lmobisocial/omlib/client/ClientMessagingUtils$1;)V

    .line 504
    .local v5, "il":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;
    iput-object v13, v5, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    .line 505
    iput-object v10, v5, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->listeners:Ljava/util/Collection;

    .line 506
    iput v2, v5, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->blobIndex:I

    .line 507
    iget-object v14, v13, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->attachments:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    iput v14, v5, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->blobCount:I

    .line 508
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    .line 497
    .end local v5    # "il":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;
    .end local v10    # "ms3":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    :cond_f5
    if-eqz v9, :cond_fd

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_103

    .line 498
    :cond_fd
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .restart local v10    # "ms3":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    goto :goto_da

    .line 500
    .end local v10    # "ms3":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    :cond_103
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 501
    .restart local v10    # "ms3":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    invoke-interface {v10, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_da

    .line 510
    .end local v2    # "bi":I
    .end local v4    # "i":I
    .end local v7    # "len":I
    .end local v8    # "ms1":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    .end local v9    # "ms2":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    .end local v10    # "ms3":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    .end local v11    # "objectId":Ljava/lang/Long;
    .end local v13    # "r":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    :cond_10c
    monitor-exit v16
    :try_end_10d
    .catchall {:try_start_90 .. :try_end_10d} :catchall_88

    :try_start_10d
    monitor-exit v15
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_8b

    goto/16 :goto_22
.end method

.method private getListenersForObject(J)Ljava/util/List;
    .registers 10
    .param p1, "objectId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/interfaces/MessageDeliveryListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    iget-object v3, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    monitor-enter v3

    .line 449
    :try_start_8
    iget-object v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 450
    .local v1, "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    if-eqz v1, :cond_19

    .line 451
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 453
    :cond_19
    iget-object v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    check-cast v1, Ljava/util/Set;

    .line 454
    .restart local v1    # "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    if-eqz v1, :cond_2c

    .line 455
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 457
    :cond_2c
    monitor-exit v3

    .line 458
    return-object v0

    .line 457
    .end local v1    # "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method private notifyDeliveryComplete(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;)V
    .registers 11
    .param p1, "r"    # Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    .prologue
    .line 413
    iget-wide v4, p1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->objectId:J

    .line 414
    .local v4, "objectId":J
    invoke-direct {p0, v4, v5}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->getListenersForObject(J)Ljava/util/List;

    move-result-object v2

    .line 415
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    iget-object v7, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    monitor-enter v7

    .line 416
    :try_start_9
    iget-object v6, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_59

    .line 418
    iget-object v7, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    monitor-enter v7

    .line 419
    :try_start_16
    iget-object v6, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    monitor-exit v7
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_5c

    .line 421
    iget-object v7, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mObjectBlobMap:Ljava/util/Map;

    monitor-enter v7

    .line 422
    :try_start_23
    iget-object v6, p1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->attachments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 423
    .local v0, "a":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 424
    .local v1, "blobKey":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mObjectBlobMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 425
    .local v3, "map":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v3, :cond_29

    .line 426
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 427
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_29

    .line 428
    iget-object v8, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mObjectBlobMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 432
    .end local v0    # "a":[B
    .end local v1    # "blobKey":Ljava/nio/ByteBuffer;
    .end local v3    # "map":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_56
    move-exception v6

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_56

    throw v6

    .line 417
    :catchall_59
    move-exception v6

    :try_start_5a
    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v6

    .line 420
    :catchall_5c
    move-exception v6

    :try_start_5d
    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v6

    .line 432
    :cond_5f
    :try_start_5f
    monitor-exit v7
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_56

    .line 433
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6e

    .line 434
    new-instance v6, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$7;

    invoke-direct {v6, p0, v2, v4, v5}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$7;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;J)V

    invoke-static {v6}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 444
    :cond_6e
    return-void
.end method


# virtual methods
.method public notifyBlobTransferBegin([B)V
    .registers 4
    .param p1, "blobHash"    # [B

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->findListenersInterestedInBlob([B)Ljava/util/List;

    move-result-object v0

    .line 324
    .local v0, "interested":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 325
    new-instance v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$3;

    invoke-direct {v1, p0, v0}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$3;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;)V

    invoke-static {v1}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 337
    :cond_12
    return-void
.end method

.method public notifyBlobTransferComplete([B)V
    .registers 4
    .param p1, "blobHash"    # [B

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->findListenersInterestedInBlob([B)Ljava/util/List;

    move-result-object v0

    .line 341
    .local v0, "interested":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 342
    new-instance v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$4;

    invoke-direct {v1, p0, v0}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$4;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;)V

    invoke-static {v1}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 358
    :cond_12
    return-void
.end method

.method public notifyBlobTransferFailed([B)V
    .registers 4
    .param p1, "blobHash"    # [B

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->findListenersInterestedInBlob([B)Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "interested":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 363
    new-instance v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$5;

    invoke-direct {v1, p0, v0, p1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$5;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;[B)V

    invoke-static {v1}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 376
    :cond_12
    return-void
.end method

.method public notifyBlobTransferProgress([BJJ)V
    .registers 14
    .param p1, "blobHash"    # [B
    .param p2, "bytesSent"    # J
    .param p4, "totalBytes"    # J

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->findListenersInterestedInBlob([B)Ljava/util/List;

    move-result-object v2

    .line 380
    .local v2, "interested":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 381
    new-instance v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;[BJJ)V

    invoke-static {v0}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 394
    :cond_16
    return-void
.end method

.method public notifyDeliveryScheduled(JI)V
    .registers 11
    .param p1, "objectId"    # J
    .param p3, "attachmentCount"    # I

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->getListenersForObject(J)Ljava/util/List;

    move-result-object v3

    .line 287
    .local v3, "ls":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 288
    new-instance v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;JI)V

    invoke-static {v1}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 298
    :cond_15
    return-void
.end method

.method public notifyObjectSent(J)V
    .registers 8
    .param p1, "objectId"    # J

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->getListenersForObject(J)Ljava/util/List;

    move-result-object v0

    .line 302
    .local v0, "ls":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 303
    new-instance v2, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$2;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;J)V

    invoke-static {v2}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 313
    :cond_12
    iget-object v3, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    monitor-enter v3

    .line 314
    :try_start_15
    iget-object v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    .line 315
    .local v1, "r":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    if-eqz v1, :cond_26

    .line 316
    const/4 v2, 0x1

    iput-boolean v2, v1, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->objectSent:Z

    .line 318
    :cond_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2b

    .line 319
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->checkDeliveryComplete(J)V

    .line 320
    return-void

    .line 318
    .end local v1    # "r":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public registerForDeliveryNotifications(Lmobisocial/omlib/interfaces/MessageDeliveryListener;J)V
    .registers 8
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    .param p2, "objectId"    # J

    .prologue
    .line 233
    iget-object v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    monitor-enter v2

    .line 234
    :try_start_3
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 235
    .local v0, "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    if-nez v0, :cond_1f

    .line 236
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 237
    .restart local v0    # "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1f
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    monitor-exit v2

    .line 241
    return-void

    .line 240
    .end local v0    # "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public registerObjectForDelivery(JLjava/util/List;)V
    .registers 21
    .param p1, "objectId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p3, "attachments":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v8, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Lmobisocial/omlib/client/ClientMessagingUtils$1;)V

    .line 257
    .local v8, "sr":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
    move-wide/from16 v0, p1

    iput-wide v0, v8, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->objectId:J

    .line 258
    move-object/from16 v0, p3

    iput-object v0, v8, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->attachments:Ljava/util/List;

    .line 259
    move-object/from16 v0, p0

    iget-object v10, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    monitor-enter v10

    .line 260
    :try_start_15
    move-object/from16 v0, p0

    iget-object v9, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mSendableReferences:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    monitor-exit v10
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_90

    .line 262
    move-object/from16 v0, p0

    iget-object v10, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mObjectBlobMap:Ljava/util/Map;

    monitor-enter v10

    .line 263
    :try_start_26
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2a
    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_93

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 264
    .local v2, "blobHash":[B
    move-object/from16 v0, p0

    iget-object v11, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    # getter for: Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v11}, Lmobisocial/omlib/client/ClientMessagingUtils;->access$000(Lmobisocial/omlib/client/ClientMessagingUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v11

    iget-object v11, v11, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v11, v2}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v7

    .line 265
    .local v7, "source":Ljava/io/File;
    iget-wide v12, v8, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->totalBlobLength:J

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v8, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->totalBlobLength:J

    .line 266
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 267
    .local v3, "blobKey":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mObjectBlobMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 268
    .local v5, "objectsForBlob":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v5, :cond_69

    .line 269
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "objectsForBlob":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 270
    .restart local v5    # "objectsForBlob":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mObjectBlobMap:Ljava/util/Map;

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_69
    const/4 v4, 0x0

    .line 273
    .local v4, "found":Z
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_83

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 274
    .local v6, "oid":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, p1

    if-nez v12, :cond_6e

    .line 275
    const/4 v4, 0x1

    .line 279
    .end local v6    # "oid":Ljava/lang/Long;
    :cond_83
    if-nez v4, :cond_2a

    .line 280
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 282
    .end local v2    # "blobHash":[B
    .end local v3    # "blobKey":Ljava/nio/ByteBuffer;
    .end local v4    # "found":Z
    .end local v5    # "objectsForBlob":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v7    # "source":Ljava/io/File;
    :catchall_8d
    move-exception v9

    monitor-exit v10
    :try_end_8f
    .catchall {:try_start_26 .. :try_end_8f} :catchall_8d

    throw v9

    .line 261
    :catchall_90
    move-exception v9

    :try_start_91
    monitor-exit v10
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v9

    .line 282
    :cond_93
    :try_start_93
    monitor-exit v10
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_8d

    .line 283
    return-void
.end method

.method public unregisterForDeliveryNotifications(Lmobisocial/omlib/interfaces/MessageDeliveryListener;J)V
    .registers 8
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    .param p2, "objectId"    # J

    .prologue
    .line 244
    iget-object v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    monitor-enter v2

    .line 245
    :try_start_3
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 246
    .local v0, "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    if-eqz v0, :cond_23

    .line 247
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 249
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->mMessageDeliveryListeners:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_23
    monitor-exit v2

    .line 253
    return-void

    .line 252
    .end local v0    # "ls":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/omlib/interfaces/MessageDeliveryListener;>;"
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method
