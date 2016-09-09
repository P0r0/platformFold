.class Lmobisocial/omlib/service/OmlibService$13;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/omlib/api/OmletOobApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/OmlibService;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 632
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$13;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmsParticipation()Z
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$13;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Oob:Lmobisocial/omlib/client/ClientOobUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientOobUtils;->getSmsAvailability()Z

    move-result v0

    return v0
.end method

.method public isIdentityAvailableForSending(Ljava/lang/String;)Z
    .registers 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 690
    if-nez p1, :cond_4

    .line 698
    :goto_3
    return v2

    .line 694
    :cond_4
    :try_start_4
    invoke-static {p1}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_15

    move-result-object v1

    .line 698
    .local v1, "identity":Lmobisocial/omlib/model/RawIdentity;
    iget-object v2, p0, Lmobisocial/omlib/service/OmlibService$13;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v2}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Oob:Lmobisocial/omlib/client/ClientOobUtils;

    invoke-virtual {v2, v1}, Lmobisocial/omlib/client/ClientOobUtils;->isIdentityAvailableForSending(Lmobisocial/omlib/model/RawIdentity;)Z

    move-result v2

    goto :goto_3

    .line 695
    .end local v1    # "identity":Lmobisocial/omlib/model/RawIdentity;
    :catch_15
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_3
.end method

.method public isMessagingAvailable(Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/CancellationSignal;)Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    .registers 13
    .param p1, "senderNumber"    # Ljava/lang/String;
    .param p2, "recipientNumbers"    # [Ljava/lang/String;
    .param p3, "allowNetwork"    # Z
    .param p4, "cancellation"    # Landroid/os/CancellationSignal;

    .prologue
    .line 673
    :try_start_0
    invoke-static {p1}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1a

    move-result-object v1

    .line 678
    .local v1, "sender":Lmobisocial/omlib/model/RawIdentity;
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 679
    .local v2, "recipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    array-length v3, p2

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v3, :cond_22

    aget-object v7, p2, v0

    .line 680
    .local v7, "r":Ljava/lang/String;
    invoke-static {v7}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_1e

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 674
    .end local v1    # "sender":Lmobisocial/omlib/model/RawIdentity;
    .end local v2    # "recipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    .end local v7    # "r":Ljava/lang/String;
    :catch_1a
    move-exception v6

    .line 675
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->LocalUserNotAuthenticated:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    .line 685
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1d
    return-object v0

    .line 682
    .restart local v1    # "sender":Lmobisocial/omlib/model/RawIdentity;
    :catch_1e
    move-exception v6

    .line 683
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v0, Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;->RemoteUserNotAvailable:Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    goto :goto_1d

    .line 685
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "recipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    :cond_22
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$13;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Oob:Lmobisocial/omlib/client/ClientOobUtils;

    sget-object v3, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->SMS:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmobisocial/omlib/client/ClientOobUtils;->isMessagingAvailable(Lmobisocial/omlib/model/RawIdentity;Ljava/util/Collection;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;ZLandroid/os/CancellationSignal;)Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;

    move-result-object v0

    goto :goto_1d
.end method

.method prepareSmsSendable(Lmobisocial/omlib/sendable/JsonSendable;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 10
    .param p1, "sendable"    # Lmobisocial/omlib/sendable/JsonSendable;
    .param p2, "smsId"    # Ljava/lang/String;
    .param p3, "appMeta"    # Lorg/json/JSONObject;

    .prologue
    .line 652
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 653
    .local v1, "meta":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 654
    .local v2, "smsInfo":Lorg/json/JSONObject;
    if-eqz p3, :cond_11

    .line 655
    const-string v3, "m"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    :cond_11
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 658
    const-string v3, "i"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    :cond_1e
    const-string v3, "smsInfo"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    invoke-virtual {p1}, Lmobisocial/omlib/sendable/JsonSendable;->getBodyAsJson()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ackRequested"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 662
    invoke-virtual {p1, v1}, Lmobisocial/omlib/sendable/JsonSendable;->setJsonMetadata(Lorg/json/JSONObject;)Lmobisocial/omlib/sendable/JsonSendable;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_30} :catch_31

    .line 666
    .end local v1    # "meta":Lorg/json/JSONObject;
    .end local v2    # "smsInfo":Lorg/json/JSONObject;
    :goto_30
    return-void

    .line 663
    :catch_31
    move-exception v0

    .line 664
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "OmlibService"

    const-string v4, "Error updating sms object"

    invoke-static {v3, v4, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method public send(Ljava/lang/String;[Ljava/lang/String;Lmobisocial/omlib/sendable/JsonSendable;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 14
    .param p1, "senderNumber"    # Ljava/lang/String;
    .param p2, "recipientNumbers"    # [Ljava/lang/String;
    .param p3, "sendable"    # Lmobisocial/omlib/sendable/JsonSendable;
    .param p4, "smsId"    # Ljava/lang/String;
    .param p5, "smsMeta"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 638
    :try_start_1
    invoke-static {p1}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v2

    .line 639
    .local v2, "sender":Lmobisocial/omlib/model/RawIdentity;
    new-instance v3, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    .local v3, "recipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    array-length v4, p2

    move v1, v0

    :goto_d
    if-ge v1, v4, :cond_1d

    aget-object v7, p2, v1

    .line 641
    .local v7, "r":Ljava/lang/String;
    invoke-static {v7}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1b

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 643
    .end local v2    # "sender":Lmobisocial/omlib/model/RawIdentity;
    .end local v3    # "recipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    .end local v7    # "r":Ljava/lang/String;
    :catch_1b
    move-exception v6

    .line 647
    :goto_1c
    return v0

    .line 646
    .restart local v2    # "sender":Lmobisocial/omlib/model/RawIdentity;
    .restart local v3    # "recipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/model/RawIdentity;>;"
    :cond_1d
    invoke-virtual {p0, p3, p4, p5}, Lmobisocial/omlib/service/OmlibService$13;->prepareSmsSendable(Lmobisocial/omlib/sendable/JsonSendable;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 647
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$13;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Oob:Lmobisocial/omlib/client/ClientOobUtils;

    sget-object v4, Lmobisocial/omlib/api/OmletFeedApi$FeedKind;->SMS:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    const/4 v5, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lmobisocial/omlib/client/ClientOobUtils;->send(Lmobisocial/omlib/interfaces/Sendable;Lmobisocial/omlib/model/RawIdentity;Ljava/util/Collection;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Lmobisocial/omlib/interfaces/MessageDeliveryListener;)Z

    move-result v0

    goto :goto_1c
.end method

.method public setSmsParticipation(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .prologue
    .line 703
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$13;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Oob:Lmobisocial/omlib/client/ClientOobUtils;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/ClientOobUtils;->setSmsAvailability(Z)V

    .line 704
    return-void
.end method
