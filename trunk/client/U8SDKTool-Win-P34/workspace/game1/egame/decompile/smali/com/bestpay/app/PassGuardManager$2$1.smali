.class Lcom/bestpay/app/PassGuardManager$2$1;
.super Ljava/lang/Object;
.source "PassGuardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/PassGuardManager$2;->doActionFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bestpay/app/PassGuardManager$2;


# direct methods
.method constructor <init>(Lcom/bestpay/app/PassGuardManager$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/PassGuardManager$2$1;->this$1:Lcom/bestpay/app/PassGuardManager$2;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    const v2, 0x5134162d

    iget-object v3, p0, Lcom/bestpay/app/PassGuardManager$2$1;->this$1:Lcom/bestpay/app/PassGuardManager$2;

    # getter for: Lcom/bestpay/app/PassGuardManager$2;->this$0:Lcom/bestpay/app/PassGuardManager;
    invoke-static {v3}, Lcom/bestpay/app/PassGuardManager$2;->access$0(Lcom/bestpay/app/PassGuardManager$2;)Lcom/bestpay/app/PassGuardManager;

    move-result-object v3

    # getter for: Lcom/bestpay/app/PassGuardManager;->passGuardEdit:Lcn/passguard/PassGuardEdit;
    invoke-static {v3}, Lcom/bestpay/app/PassGuardManager;->access$2(Lcom/bestpay/app/PassGuardManager;)Lcn/passguard/PassGuardEdit;

    move-result-object v3

    iget-object v3, v3, Lcn/passguard/PassGuardEdit;->m_strid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3b

    .line 80
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 81
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 82
    const/high16 v2, -0x3d380000    # -100.0f

    .line 81
    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 83
    .local v1, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager$2$1;->this$1:Lcom/bestpay/app/PassGuardManager$2;

    # getter for: Lcom/bestpay/app/PassGuardManager$2;->this$0:Lcom/bestpay/app/PassGuardManager;
    invoke-static {v2}, Lcom/bestpay/app/PassGuardManager$2;->access$0(Lcom/bestpay/app/PassGuardManager$2;)Lcom/bestpay/app/PassGuardManager;

    move-result-object v2

    # getter for: Lcom/bestpay/app/PassGuardManager;->webView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/bestpay/app/PassGuardManager;->access$1(Lcom/bestpay/app/PassGuardManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 88
    .end local v0    # "animationSet":Landroid/view/animation/AnimationSet;
    .end local v1    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_3b
    return-void
.end method
