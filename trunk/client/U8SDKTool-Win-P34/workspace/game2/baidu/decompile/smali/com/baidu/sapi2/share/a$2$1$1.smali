.class Lcom/baidu/sapi2/share/a$2$1$1;
.super Ljava/lang/Object;
.source "SapiShareClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/a$2$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Landroid/content/ServiceConnection;

.field final synthetic c:Lcom/baidu/sapi2/share/a$2$1;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/a$2$1;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V
    .registers 4

    .prologue
    .line 172
    iput-object p1, p0, Lcom/baidu/sapi2/share/a$2$1$1;->c:Lcom/baidu/sapi2/share/a$2$1;

    iput-object p2, p0, Lcom/baidu/sapi2/share/a$2$1$1;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/baidu/sapi2/share/a$2$1$1;->b:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 176
    :try_start_1
    new-instance v3, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v4, Lcom/baidu/sapi2/share/ShareEvent;->INVALIDATE:Lcom/baidu/sapi2/share/ShareEvent;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/sapi2/share/a$2$1$1;->c:Lcom/baidu/sapi2/share/a$2$1;

    iget-object v6, v6, Lcom/baidu/sapi2/share/a$2$1;->b:Lcom/baidu/sapi2/share/a$2;

    iget-object v6, v6, Lcom/baidu/sapi2/share/a$2;->c:Lcom/baidu/sapi2/SapiAccount;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;Ljava/util/List;)V

    .line 179
    .local v3, "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    invoke-static {v3}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/share/ShareModel;)Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 181
    .local v2, "reply":Landroid/os/Parcel;
    iget-object v4, p0, Lcom/baidu/sapi2/share/a$2$1$1;->a:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_55
    .catchall {:try_start_1 .. :try_end_22} :catchall_6a

    .line 186
    :try_start_22
    invoke-static {}, Lcom/baidu/sapi2/share/a;->d()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/sapi2/share/a$2$1$1;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2d} :catch_50

    .line 191
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :goto_2d
    iget-object v4, p0, Lcom/baidu/sapi2/share/a$2$1$1;->c:Lcom/baidu/sapi2/share/a$2$1;

    iget-object v4, v4, Lcom/baidu/sapi2/share/a$2$1;->b:Lcom/baidu/sapi2/share/a$2;

    iget-object v4, v4, Lcom/baidu/sapi2/share/a$2;->a:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    iget-object v4, p0, Lcom/baidu/sapi2/share/a$2$1$1;->c:Lcom/baidu/sapi2/share/a$2$1;

    iget-object v4, v4, Lcom/baidu/sapi2/share/a$2$1;->b:Lcom/baidu/sapi2/share/a$2;

    iget-object v4, v4, Lcom/baidu/sapi2/share/a$2;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7c

    .line 193
    iget-object v4, p0, Lcom/baidu/sapi2/share/a$2$1$1;->c:Lcom/baidu/sapi2/share/a$2$1;

    iget-object v4, v4, Lcom/baidu/sapi2/share/a$2$1;->b:Lcom/baidu/sapi2/share/a$2;

    iget-object v4, v4, Lcom/baidu/sapi2/share/a$2;->b:Landroid/os/Handler;

    iget-object v5, p0, Lcom/baidu/sapi2/share/a$2$1$1;->c:Lcom/baidu/sapi2/share/a$2$1;

    iget-object v5, v5, Lcom/baidu/sapi2/share/a$2$1;->a:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :goto_4f
    return-void

    .line 187
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    .restart local v3    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :catch_50
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 182
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :catch_55
    move-exception v1

    .line 183
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_56
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_6a

    .line 186
    :try_start_59
    invoke-static {}, Lcom/baidu/sapi2/share/a;->d()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/sapi2/share/a$2$1$1;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_64} :catch_65

    goto :goto_2d

    .line 187
    :catch_65
    move-exception v1

    .line 188
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 185
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_6a
    move-exception v4

    .line 186
    :try_start_6b
    invoke-static {}, Lcom/baidu/sapi2/share/a;->d()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/sapi2/share/a$2$1$1;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_76} :catch_77

    .line 189
    :goto_76
    throw v4

    .line 187
    :catch_77
    move-exception v1

    .line 188
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_76

    .line 195
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_7c
    iget-object v4, p0, Lcom/baidu/sapi2/share/a$2$1$1;->c:Lcom/baidu/sapi2/share/a$2$1;

    iget-object v4, v4, Lcom/baidu/sapi2/share/a$2$1;->b:Lcom/baidu/sapi2/share/a$2;

    iget-object v4, v4, Lcom/baidu/sapi2/share/a$2;->d:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_4f
.end method
