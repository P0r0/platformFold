.class final Lcom/vivo/sdkplugin/activity/cB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cB;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cB;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->d(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    return-void
.end method
