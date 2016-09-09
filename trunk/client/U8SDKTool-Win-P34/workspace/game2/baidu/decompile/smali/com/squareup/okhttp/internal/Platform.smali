.class public Lcom/squareup/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/Platform$JettyNegoProvider;,
        Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;,
        Lcom/squareup/okhttp/internal/Platform$Android;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lcom/squareup/okhttp/internal/Platform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->findPlatform()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/Platform;->PLATFORM:Lcom/squareup/okhttp/internal/Platform;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    return-void
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 386
    .local v2, "result":Lokio/Buffer;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_a
    if-ge v0, v3, :cond_2c

    .line 387
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/Protocol;

    .line 388
    .local v1, "protocol":Lcom/squareup/okhttp/Protocol;
    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne v1, v4, :cond_19

    .line 386
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 389
    :cond_19
    invoke-virtual {v1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 390
    invoke-virtual {v1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_16

    .line 392
    .end local v1    # "protocol":Lcom/squareup/okhttp/Protocol;
    :cond_2c
    invoke-virtual {v2}, Lokio/Buffer;->readByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static findPlatform()Lcom/squareup/okhttp/internal/Platform;
    .registers 25

    .prologue
    .line 113
    :try_start_0
    const-string v2, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_a0

    .line 119
    .local v15, "e":Ljava/lang/ClassNotFoundException;
    :goto_5
    :try_start_5
    new-instance v3, Lcom/squareup/okhttp/internal/OptionalMethod;

    const/4 v2, 0x0

    const-string v9, "setUseSessionTickets"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v3, v2, v9, v0}, Lcom/squareup/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 121
    .local v3, "setUseSessionTickets":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    new-instance v4, Lcom/squareup/okhttp/internal/OptionalMethod;

    .end local v15    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    const-string v9, "setHostname"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v2, v9, v0}, Lcom/squareup/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_35} :catch_a8

    .line 123
    .local v4, "setHostname":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    const/4 v5, 0x0

    .line 124
    .local v5, "trafficStatsTagSocket":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 125
    .local v6, "trafficStatsUntagSocket":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 126
    .local v7, "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    const/4 v8, 0x0

    .line 130
    .local v8, "setAlpnProtocols":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    :try_start_39
    const-string v2, "android.net.TrafficStats"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v21

    .line 131
    .local v21, "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "tagSocket"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljava/net/Socket;

    aput-object v23, v9, v22

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 132
    const-string v2, "untagSocket"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljava/net/Socket;

    aput-object v23, v9, v22

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39 .. :try_end_60} :catch_14a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_39 .. :try_end_60} :catch_142

    move-result-object v6

    .line 136
    :try_start_61
    const-string v2, "android.net.Network"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 137
    new-instance v16, Lcom/squareup/okhttp/internal/OptionalMethod;

    const-class v2, [B

    const-string v9, "getAlpnSelectedProtocol"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v9, v1}, Lcom/squareup/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_61 .. :try_end_7b} :catch_14d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_61 .. :try_end_7b} :catch_142

    .line 138
    .end local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .local v16, "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    :try_start_7b
    new-instance v20, Lcom/squareup/okhttp/internal/OptionalMethod;

    const/4 v2, 0x0

    const-string v9, "setAlpnProtocols"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, [B

    aput-object v24, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v9, v1}, Lcom/squareup/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_95
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7b .. :try_end_95} :catch_150
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7b .. :try_end_95} :catch_145

    .end local v8    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .local v20, "setAlpnProtocols":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    move-object/from16 v8, v20

    .end local v20    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v8    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    move-object/from16 v7, v16

    .line 144
    .end local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .end local v21    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    :goto_99
    :try_start_99
    new-instance v2, Lcom/squareup/okhttp/internal/Platform$Android;

    invoke-direct/range {v2 .. v8}, Lcom/squareup/okhttp/internal/Platform$Android;-><init>(Lcom/squareup/okhttp/internal/OptionalMethod;Lcom/squareup/okhttp/internal/OptionalMethod;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/OptionalMethod;Lcom/squareup/okhttp/internal/OptionalMethod;)V

    move-object v9, v2

    .line 165
    .end local v3    # "setUseSessionTickets":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .end local v4    # "setHostname":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .end local v5    # "trafficStatsTagSocket":Ljava/lang/reflect/Method;
    .end local v6    # "trafficStatsUntagSocket":Ljava/lang/reflect/Method;
    .end local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .end local v8    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .local v18, "negoClassName":Ljava/lang/String;
    :goto_9f
    return-object v9

    .line 114
    .end local v18    # "negoClassName":Ljava/lang/String;
    :catch_a0
    move-exception v15

    .line 116
    .restart local v15    # "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_99 .. :try_end_a6} :catch_a8

    goto/16 :goto_5

    .line 146
    :catch_a8
    move-exception v2

    .line 152
    .end local v15    # "e":Ljava/lang/ClassNotFoundException;
    :try_start_a9
    const-string v18, "org.eclipse.jetty.alpn.ALPN"

    .line 153
    .restart local v18    # "negoClassName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 154
    .local v17, "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "$Provider"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 155
    .local v19, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "$ClientProvider"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 156
    .local v13, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "$ServerProvider"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 157
    .local v14, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "put"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljavax/net/ssl/SSLSocket;

    aput-object v23, v9, v22

    const/16 v22, 0x1

    aput-object v19, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 158
    .local v10, "putMethod":Ljava/lang/reflect/Method;
    const-string v2, "get"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljavax/net/ssl/SSLSocket;

    aput-object v23, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 159
    .local v11, "getMethod":Ljava/lang/reflect/Method;
    const-string v2, "remove"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljavax/net/ssl/SSLSocket;

    aput-object v23, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 160
    .local v12, "removeMethod":Ljava/lang/reflect/Method;
    new-instance v9, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;

    invoke-direct/range {v9 .. v14}, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_136
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a9 .. :try_end_136} :catch_138
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a9 .. :try_end_136} :catch_140

    goto/16 :goto_9f

    .line 162
    .end local v10    # "putMethod":Ljava/lang/reflect/Method;
    .end local v11    # "getMethod":Ljava/lang/reflect/Method;
    .end local v12    # "removeMethod":Ljava/lang/reflect/Method;
    .end local v13    # "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_138
    move-exception v2

    .line 165
    :goto_139
    new-instance v9, Lcom/squareup/okhttp/internal/Platform;

    invoke-direct {v9}, Lcom/squareup/okhttp/internal/Platform;-><init>()V

    goto/16 :goto_9f

    .line 162
    :catch_140
    move-exception v2

    goto :goto_139

    .line 141
    .end local v18    # "negoClassName":Ljava/lang/String;
    .restart local v3    # "setUseSessionTickets":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v4    # "setHostname":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v5    # "trafficStatsTagSocket":Ljava/lang/reflect/Method;
    .restart local v6    # "trafficStatsUntagSocket":Ljava/lang/reflect/Method;
    .restart local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v8    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    :catch_142
    move-exception v2

    goto/16 :goto_99

    .end local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v21    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_145
    move-exception v2

    move-object/from16 v7, v16

    .end local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    goto/16 :goto_99

    .end local v21    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_14a
    move-exception v2

    goto/16 :goto_99

    .line 139
    .restart local v21    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_14d
    move-exception v2

    goto/16 :goto_99

    .end local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    :catch_150
    move-exception v2

    move-object/from16 v7, v16

    .end local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/OptionalMethod;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    goto/16 :goto_99
.end method

.method public static get()Lcom/squareup/okhttp/internal/Platform;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/squareup/okhttp/internal/Platform;->PLATFORM:Lcom/squareup/okhttp/internal/Platform;

    return-object v0
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .registers 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 92
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 102
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public logW(Ljava/lang/String;)V
    .registers 3
    .param p1, "warning"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 72
    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method
