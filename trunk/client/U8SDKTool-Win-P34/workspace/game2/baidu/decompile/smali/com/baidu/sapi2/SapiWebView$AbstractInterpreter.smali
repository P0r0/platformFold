.class abstract Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.super Ljava/lang/Object;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AbstractInterpreter"
.end annotation


# instance fields
.field final synthetic b:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 2817
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
.end method
