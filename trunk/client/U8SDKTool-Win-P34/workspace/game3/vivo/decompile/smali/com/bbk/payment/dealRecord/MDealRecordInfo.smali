.class public Lcom/bbk/payment/dealRecord/MDealRecordInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setOrderNum(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setTicketAmount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " amount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ticketAmount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getTicketAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " orderNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/MDealRecordInfo;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
