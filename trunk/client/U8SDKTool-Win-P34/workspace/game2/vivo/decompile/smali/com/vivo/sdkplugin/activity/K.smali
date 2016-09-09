.class final Lcom/vivo/sdkplugin/activity/K;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/K;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-nez p2, :cond_8

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/K;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;Z)Z

    :cond_8
    return-void
.end method
