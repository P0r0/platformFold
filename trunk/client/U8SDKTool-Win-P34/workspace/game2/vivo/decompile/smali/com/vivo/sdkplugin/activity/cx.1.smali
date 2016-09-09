.class final Lcom/vivo/sdkplugin/activity/cx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cx;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cx;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->exportDB(Landroid/content/Context;)V

    return-void
.end method
