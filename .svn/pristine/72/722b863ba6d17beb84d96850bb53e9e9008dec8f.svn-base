.class Lcom/baidu/sapi2/share/a$2$1;
.super Ljava/lang/Object;
.source "SapiShareClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/baidu/sapi2/share/a$2;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/a$2;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/sapi2/share/a$2$1;->b:Lcom/baidu/sapi2/share/a$2;

    iput-object p2, p0, Lcom/baidu/sapi2/share/a$2$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 171
    move-object v0, p0

    .line 172
    .local v0, "connection":Landroid/content/ServiceConnection;
    iget-object v1, p0, Lcom/baidu/sapi2/share/a$2$1;->b:Lcom/baidu/sapi2/share/a$2;

    iget-object v1, v1, Lcom/baidu/sapi2/share/a$2;->b:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/sapi2/share/a$2$1$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/baidu/sapi2/share/a$2$1$1;-><init>(Lcom/baidu/sapi2/share/a$2$1;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 203
    return-void
.end method
