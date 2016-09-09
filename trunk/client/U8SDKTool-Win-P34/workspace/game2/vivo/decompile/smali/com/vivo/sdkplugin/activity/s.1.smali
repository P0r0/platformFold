.class final Lcom/vivo/sdkplugin/activity/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/s;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iput p2, p0, Lcom/vivo/sdkplugin/activity/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/s;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget v1, p0, Lcom/vivo/sdkplugin/activity/s;->b:I

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    return-void
.end method
