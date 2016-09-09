.class final Lcom/vivo/sdkplugin/activity/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dr;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dr;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->c(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;I)V

    return-void
.end method
