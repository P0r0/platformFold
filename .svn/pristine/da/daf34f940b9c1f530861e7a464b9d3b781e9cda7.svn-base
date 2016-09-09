.class public Lcom/baidu/wallet/core/utils/contacts/ContractInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->c:I

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->c:I

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    if-nez v2, :cond_37

    iget-object v2, p1, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getErrordigit()I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->c:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    if-nez v2, :cond_17

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public setErrordigit(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->c:I

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u901a\u8baf\u5f55 [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/utils/contacts/ContractInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
