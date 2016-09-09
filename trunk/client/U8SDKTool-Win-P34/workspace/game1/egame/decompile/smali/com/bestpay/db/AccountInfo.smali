.class public Lcom/bestpay/db/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# instance fields
.field private dt:Ljava/util/Date;

.field private key_index:Ljava/lang/String;

.field private key_tid:Ljava/lang/String;

.field private tid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bestpay/db/AccountInfo;->dt:Ljava/util/Date;

    return-object v0
.end method

.method public getKey_index()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bestpay/db/AccountInfo;->key_index:Ljava/lang/String;

    return-object v0
.end method

.method public getKey_tid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bestpay/db/AccountInfo;->key_tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bestpay/db/AccountInfo;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public setDt(Ljava/util/Date;)V
    .registers 2
    .param p1, "dt"    # Ljava/util/Date;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bestpay/db/AccountInfo;->dt:Ljava/util/Date;

    .line 39
    return-void
.end method

.method public setKey_index(Ljava/lang/String;)V
    .registers 2
    .param p1, "key_index"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/bestpay/db/AccountInfo;->key_index:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setKey_tid(Ljava/lang/String;)V
    .registers 2
    .param p1, "key_tid"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bestpay/db/AccountInfo;->key_tid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .registers 2
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/bestpay/db/AccountInfo;->tid:Ljava/lang/String;

    .line 21
    return-void
.end method
