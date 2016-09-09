.class public Lcom/bbk/payment/network/ProxyFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProxyInstance(Lcom/bbk/payment/network/ProxyConfig;)Ljava/net/Proxy;
    .registers 5

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/bbk/payment/network/ProxyConfig;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    invoke-virtual {p0}, Lcom/bbk/payment/network/ProxyConfig;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    :goto_14
    new-instance v1, Ljava/net/Proxy;

    invoke-virtual {p0}, Lcom/bbk/payment/network/ProxyConfig;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbk/payment/network/ProxyConfig;->getPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    move-object v0, v1

    goto :goto_a

    :pswitch_27
    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    goto :goto_14

    :pswitch_2a
    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    goto :goto_14

    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method
