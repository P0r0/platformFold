.class Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;

.field private final synthetic val$pay_msg:Ljava/lang/String;

.field private final synthetic val$pay_result:Z

.field private final synthetic val$result_code:Ljava/lang/String;

.field private final synthetic val$transNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;

    iput-object p2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->val$transNo:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->val$pay_result:Z

    iput-object p4, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->val$result_code:Ljava/lang/String;

    iput-object p5, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->val$pay_msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;->access$0(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;)Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    move-result-object v0

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->vivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;
    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$18(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->val$transNo:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->val$pay_result:Z

    iget-object v3, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->val$result_code:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->val$pay_msg:Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3$1;->this$1:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;->this$0:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;
    invoke-static {v5}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;->access$0(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;)Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    move-result-object v5

    # getter for: Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->access$2(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/bbk/payment/payment/VivoPaymentManager;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
