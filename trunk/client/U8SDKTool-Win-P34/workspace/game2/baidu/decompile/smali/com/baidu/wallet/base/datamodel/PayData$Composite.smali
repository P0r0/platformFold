.class public Lcom/baidu/wallet/base/datamodel/PayData$Composite;
.super Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/base/datamodel/PayData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Composite"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2b9f9eb74cdbb426L


# instance fields
.field public activity_channel_list:[Lcom/baidu/wallet/base/datamodel/PayData$ChannelActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrderPayment(Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    invoke-virtual {v0}, [Lcom/baidu/wallet/base/datamodel/PayData$Discount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    :cond_11
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    invoke-virtual {v0}, [Lcom/baidu/wallet/base/datamodel/PayData$Coupon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    :cond_1f
    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->easypay_amount:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->easypay_amount:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/datamodel/PayData$Composite;->balance_amount:Ljava/lang/String;

    iput-object v0, p1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->balance_amount:Ljava/lang/String;

    goto :goto_2
.end method
