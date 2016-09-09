.class final Lcom/vivo/sdkplugin/activity/fp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fp;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fp;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->c(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;I)V

    return-void
.end method
