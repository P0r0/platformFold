.class public Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse$CreditMap;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4ee2b030dc5aff70L


# instance fields
.field public has_mobile_pwd:Ljava/lang/String;

.field public passfree_credit_map:[Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse$CreditMap;

.field public passfree_flag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse;->passfree_flag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse;->passfree_credit_map:[Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse$CreditMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse;->passfree_credit_map:[Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse$CreditMap;

    array-length v0, v0

    if-gtz v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public hasMobilePwd()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse;->has_mobile_pwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse;->has_mobile_pwd:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isOpenPwdFree()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse;->passfree_flag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/QueryPassFreeResponse;->passfree_flag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
