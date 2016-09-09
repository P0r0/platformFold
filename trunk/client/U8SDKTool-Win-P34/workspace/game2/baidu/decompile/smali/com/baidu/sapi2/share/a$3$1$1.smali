.class Lcom/baidu/sapi2/share/a$3$1$1;
.super Ljava/lang/Object;
.source "SapiShareClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/a$3$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Landroid/content/ServiceConnection;

.field final synthetic c:Lcom/baidu/sapi2/share/a$3$1;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/a$3$1;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V
    .registers 4

    .prologue
    .line 249
    iput-object p1, p0, Lcom/baidu/sapi2/share/a$3$1$1;->c:Lcom/baidu/sapi2/share/a$3$1;

    iput-object p2, p0, Lcom/baidu/sapi2/share/a$3$1$1;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/baidu/sapi2/share/a$3$1$1;->b:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 253
    :try_start_1
    new-instance v4, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v5, Lcom/baidu/sapi2/share/ShareEvent;->SYNC_REQ:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-direct {v4, v5}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;)V

    .line 254
    .local v4, "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    invoke-static {v4}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/share/ShareModel;)Landroid/os/Parcel;

    move-result-object v0

    .line 255
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 256
    .local v2, "reply":Landroid/os/Parcel;
    iget-object v5, p0, Lcom/baidu/sapi2/share/a$3$1$1;->a:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 257
    .local v3, "result":Z
    if-eqz v3, :cond_1d

    .line 258
    invoke-static {v2}, Lcom/baidu/sapi2/share/a;->a(Landroid/os/Parcel;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1d} :catch_5f
    .catchall {:try_start_1 .. :try_end_1d} :catchall_74

    .line 264
    :cond_1d
    :try_start_1d
    invoke-static {}, Lcom/baidu/sapi2/share/a;->d()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/sapi2/share/a$3$1$1;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_28} :catch_5a

    .line 269
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "result":Z
    .end local v4    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :goto_28
    iget-object v5, p0, Lcom/baidu/sapi2/share/a$3$1$1;->c:Lcom/baidu/sapi2/share/a$3$1;

    iget-object v5, v5, Lcom/baidu/sapi2/share/a$3$1;->b:Lcom/baidu/sapi2/share/a$3;

    iget-object v5, v5, Lcom/baidu/sapi2/share/a$3;->a:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 270
    iget-object v5, p0, Lcom/baidu/sapi2/share/a$3$1$1;->c:Lcom/baidu/sapi2/share/a$3$1;

    iget-object v5, v5, Lcom/baidu/sapi2/share/a$3$1;->b:Lcom/baidu/sapi2/share/a$3;

    iget-object v5, v5, Lcom/baidu/sapi2/share/a$3;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_86

    invoke-static {}, Lcom/baidu/sapi2/share/a;->e()Lcom/baidu/sapi2/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/b;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_86

    .line 272
    iget-object v5, p0, Lcom/baidu/sapi2/share/a$3$1$1;->c:Lcom/baidu/sapi2/share/a$3$1;

    iget-object v5, v5, Lcom/baidu/sapi2/share/a$3$1;->b:Lcom/baidu/sapi2/share/a$3;

    iget-object v5, v5, Lcom/baidu/sapi2/share/a$3;->b:Landroid/os/Handler;

    iget-object v6, p0, Lcom/baidu/sapi2/share/a$3$1$1;->c:Lcom/baidu/sapi2/share/a$3$1;

    iget-object v6, v6, Lcom/baidu/sapi2/share/a$3$1;->a:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    :goto_59
    return-void

    .line 265
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    .restart local v3    # "result":Z
    .restart local v4    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :catch_5a
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_28

    .line 260
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "result":Z
    .end local v4    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :catch_5f
    move-exception v1

    .line 261
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_60
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_74

    .line 264
    :try_start_63
    invoke-static {}, Lcom/baidu/sapi2/share/a;->d()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/sapi2/share/a$3$1$1;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_6e} :catch_6f

    goto :goto_28

    .line 265
    :catch_6f
    move-exception v1

    .line 266
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_28

    .line 263
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_74
    move-exception v5

    .line 264
    :try_start_75
    invoke-static {}, Lcom/baidu/sapi2/share/a;->d()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v6

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/baidu/sapi2/share/a$3$1$1;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_80} :catch_81

    .line 267
    :goto_80
    throw v5

    .line 265
    :catch_81
    move-exception v1

    .line 266
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_80

    .line 274
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_86
    iget-object v5, p0, Lcom/baidu/sapi2/share/a$3$1$1;->c:Lcom/baidu/sapi2/share/a$3$1;

    iget-object v5, v5, Lcom/baidu/sapi2/share/a$3$1;->b:Lcom/baidu/sapi2/share/a$3;

    iget-object v5, v5, Lcom/baidu/sapi2/share/a$3;->c:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_59
.end method
