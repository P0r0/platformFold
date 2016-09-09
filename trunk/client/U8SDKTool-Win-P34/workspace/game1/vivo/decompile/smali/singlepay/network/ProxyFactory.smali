.class public Lsinglepay/network/ProxyFactory;
.super Ljava/lang/Object;
.source "ProxyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProxyInstance(Lsinglepay/network/ProxyConfig;)Ljava/net/Proxy;
    .registers 5
    .param p0, "proxyConfig"    # Lsinglepay/network/ProxyConfig;

    .prologue
    .line 59
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lsinglepay/network/ProxyConfig;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    :cond_9
    const/4 v0, 0x0

    .line 76
    :goto_a
    return-object v0

    .line 61
    :cond_b
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 62
    .local v1, "proxyType":Ljava/net/Proxy$Type;
    invoke-virtual {p0}, Lsinglepay/network/ProxyConfig;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_2c

    .line 73
    :goto_14
    new-instance v0, Ljava/net/Proxy;

    invoke-virtual {p0}, Lsinglepay/network/ProxyConfig;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Lsinglepay/network/ProxyConfig;->getPort()I

    move-result v3

    .line 73
    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 76
    .local v0, "proxy":Ljava/net/Proxy;
    goto :goto_a

    .line 64
    .end local v0    # "proxy":Ljava/net/Proxy;
    :pswitch_26
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 65
    goto :goto_14

    .line 67
    :pswitch_29
    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 68
    goto :goto_14

    .line 62
    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method
