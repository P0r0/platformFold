.class final Lcom/unionpay/sdk/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field final synthetic a:Lcom/unionpay/sdk/au$b;


# direct methods
.method constructor <init>(Lcom/unionpay/sdk/au$b;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/sdk/av;->a:Lcom/unionpay/sdk/au$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
