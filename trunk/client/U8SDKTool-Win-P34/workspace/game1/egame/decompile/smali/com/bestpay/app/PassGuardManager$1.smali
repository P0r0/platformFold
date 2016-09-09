.class Lcom/bestpay/app/PassGuardManager$1;
.super Ljava/lang/Object;
.source "PassGuardManager.java"

# interfaces
.implements Lcn/passguard/doAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/PassGuardManager;->newPassGuard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/app/PassGuardManager;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bestpay/app/PassGuardManager;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/PassGuardManager$1;->this$0:Lcom/bestpay/app/PassGuardManager;

    iput-object p2, p0, Lcom/bestpay/app/PassGuardManager$1;->val$id:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bestpay/app/PassGuardManager$1;)Lcom/bestpay/app/PassGuardManager;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager$1;->this$0:Lcom/bestpay/app/PassGuardManager;

    return-object v0
.end method


# virtual methods
.method public doActionFunction()V
    .registers 4

    .prologue
    .line 58
    # getter for: Lcom/bestpay/app/PassGuardManager;->m_context:Landroid/content/Context;
    invoke-static {}, Lcom/bestpay/app/PassGuardManager;->access$0()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/bestpay/app/PassGuardManager$1$1;

    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager$1;->val$id:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/bestpay/app/PassGuardManager$1$1;-><init>(Lcom/bestpay/app/PassGuardManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
