.class Lcom/baidu/wallet/passport/PassLoginActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;


# instance fields
.field final synthetic this$0:Lcom/baidu/wallet/passport/PassLoginActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/passport/PassLoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/passport/PassLoginActivity$3;->this$0:Lcom/baidu/wallet/passport/PassLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/passport/PassLoginActivity$3;->this$0:Lcom/baidu/wallet/passport/PassLoginActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/passport/PassLoginActivity;->finish()V

    return-void
.end method
