.class final Lcom/vivo/sdkplugin/activity/cF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/cE;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/cE;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cF;->a:Lcom/vivo/sdkplugin/activity/cE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cF;->a:Lcom/vivo/sdkplugin/activity/cE;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cE;->a(Lcom/vivo/sdkplugin/activity/cE;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->z(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    return-void
.end method
