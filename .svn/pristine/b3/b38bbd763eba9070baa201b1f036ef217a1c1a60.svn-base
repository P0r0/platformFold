.class public Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$BindCardInfo;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$SpInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64dcda21b3663581L


# instance fields
.field public algorithm_check_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;

.field public bind_card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$BindCardInfo;

.field public card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

.field public channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

.field public protocol_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;

.field public sp_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$SpInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getOneCentsDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->need_pay_one_cent_desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->need_pay_one_cent_desc:Ljava/lang/String;

    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method public isOneCentsBusiness()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->need_pay_one_cent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "1"

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->need_pay_one_cent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
