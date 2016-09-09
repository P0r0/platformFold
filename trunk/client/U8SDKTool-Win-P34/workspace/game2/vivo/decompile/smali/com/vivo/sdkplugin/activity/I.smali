.class final Lcom/vivo/sdkplugin/activity/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/I;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/I;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->finish()V

    return-void
.end method
