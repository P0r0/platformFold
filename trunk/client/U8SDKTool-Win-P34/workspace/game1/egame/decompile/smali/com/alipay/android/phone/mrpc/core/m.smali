.class final Lcom/alipay/android/phone/mrpc/core/m;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/k;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/k;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/m;->a:Lcom/alipay/android/phone/mrpc/core/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .registers 5

    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method
