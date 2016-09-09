.class final Lcom/bbk/payment/action/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/bbk/payment/action/ActionAdapter;

.field private final synthetic b:Lcom/bbk/payment/action/Action;


# direct methods
.method constructor <init>(Lcom/bbk/payment/action/ActionAdapter;Lcom/bbk/payment/action/Action;)V
    .registers 3

    iput-object p1, p0, Lcom/bbk/payment/action/b;->a:Lcom/bbk/payment/action/ActionAdapter;

    iput-object p2, p0, Lcom/bbk/payment/action/b;->b:Lcom/bbk/payment/action/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/action/b;->a:Lcom/bbk/payment/action/ActionAdapter;

    invoke-static {v1}, Lcom/bbk/payment/action/ActionAdapter;->a(Lcom/bbk/payment/action/ActionAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bbk/payment/PaymentDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activityId"

    iget-object v2, p0, Lcom/bbk/payment/action/b;->b:Lcom/bbk/payment/action/Action;

    invoke-virtual {v2}, Lcom/bbk/payment/action/Action;->getActionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    iget-object v2, p0, Lcom/bbk/payment/action/b;->b:Lcom/bbk/payment/action/Action;

    invoke-virtual {v2}, Lcom/bbk/payment/action/Action;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appId"

    iget-object v2, p0, Lcom/bbk/payment/action/b;->b:Lcom/bbk/payment/action/Action;

    invoke-virtual {v2}, Lcom/bbk/payment/action/Action;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbk/payment/action/b;->a:Lcom/bbk/payment/action/ActionAdapter;

    invoke-static {v1}, Lcom/bbk/payment/action/ActionAdapter;->a(Lcom/bbk/payment/action/ActionAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
