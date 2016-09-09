.class public Lcom/u8/sdk/test/order/U8Account;
.super Ljava/lang/Object;
.source "U8Account.java"


# instance fields
.field private accountID:Ljava/lang/String;

.field private accountName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/u8/sdk/test/order/U8Account;->accountID:Ljava/lang/String;

    iput-object p2, p0, Lcom/u8/sdk/test/order/U8Account;->accountName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/test/order/U8Account;->accountID:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/test/order/U8Account;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/order/U8Account;->accountID:Ljava/lang/String;

    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/order/U8Account;->accountName:Ljava/lang/String;

    return-void
.end method
