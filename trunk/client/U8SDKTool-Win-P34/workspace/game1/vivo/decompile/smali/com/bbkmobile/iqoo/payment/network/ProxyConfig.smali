.class public Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_DIRECT:I = 0x1

.field public static final TYPE_HTTP:I = 0x2

.field public static final TYPE_SOCKS:I = 0x3


# instance fields
.field protected address:Ljava/lang/String;

.field protected password:Ljava/lang/String;

.field protected port:I

.field protected final type:I

.field protected username:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->type:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->port:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->type:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->address:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;
    .registers 2

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->port:I

    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->username:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Pwd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbkmobile/iqoo/payment/network/ProxyConfig;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
