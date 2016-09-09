.class Lcom/baidu/apollon/restnet/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field final synthetic a:Lcom/baidu/apollon/restnet/b/a/c;


# direct methods
.method constructor <init>(Lcom/baidu/apollon/restnet/b/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/apollon/restnet/b/a/d;->a:Lcom/baidu/apollon/restnet/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
