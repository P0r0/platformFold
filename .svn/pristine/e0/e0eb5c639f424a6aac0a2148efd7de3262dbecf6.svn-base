.class Lmobisocial/omlib/api/OmletApiManager$1;
.super Landroid/os/AsyncTask;
.source "OmletApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/api/OmletApiManager;->serviceConnectedCallback(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/api/OmletApiManager;

.field final synthetic val$apiService:Lmobisocial/omlib/service/BaseOmletApiService;


# direct methods
.method constructor <init>(Lmobisocial/omlib/api/OmletApiManager;Lmobisocial/omlib/service/BaseOmletApiService;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/api/OmletApiManager;

    .prologue
    .line 228
    iput-object p1, p0, Lmobisocial/omlib/api/OmletApiManager$1;->this$0:Lmobisocial/omlib/api/OmletApiManager;

    iput-object p2, p0, Lmobisocial/omlib/api/OmletApiManager$1;->val$apiService:Lmobisocial/omlib/service/BaseOmletApiService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 232
    iget-object v0, p0, Lmobisocial/omlib/api/OmletApiManager$1;->val$apiService:Lmobisocial/omlib/service/BaseOmletApiService;

    check-cast v0, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->blockUntilClientIsInitialized()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 228
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/api/OmletApiManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "osmSuccess"    # Ljava/lang/Boolean;

    .prologue
    .line 237
    iget-object v2, p0, Lmobisocial/omlib/api/OmletApiManager$1;->this$0:Lmobisocial/omlib/api/OmletApiManager;

    monitor-enter v2

    .line 238
    :try_start_3
    iget-object v1, p0, Lmobisocial/omlib/api/OmletApiManager$1;->this$0:Lmobisocial/omlib/api/OmletApiManager;

    # getter for: Lmobisocial/omlib/api/OmletApiManager;->mListeners:Ljava/util/Set;
    invoke-static {v1}, Lmobisocial/omlib/api/OmletApiManager;->access$100(Lmobisocial/omlib/api/OmletApiManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;

    .line 239
    .local v0, "l":Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 240
    iget-object v3, p0, Lmobisocial/omlib/api/OmletApiManager$1;->val$apiService:Lmobisocial/omlib/service/BaseOmletApiService;

    invoke-interface {v0, v3}, Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;->onApiReady(Lmobisocial/omlib/api/OmletApi;)V

    goto :goto_d

    .line 247
    .end local v0    # "l":Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1

    .line 242
    .restart local v0    # "l":Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;
    :cond_28
    :try_start_28
    iget-object v3, p0, Lmobisocial/omlib/api/OmletApiManager$1;->this$0:Lmobisocial/omlib/api/OmletApiManager;

    sget-object v4, Lmobisocial/omlib/api/OmletApiManager$Error;->BINDING_EXCEPTION:Lmobisocial/omlib/api/OmletApiManager$Error;

    iput-object v4, v3, Lmobisocial/omlib/api/OmletApiManager;->mApiConnectionError:Lmobisocial/omlib/api/OmletApiManager$Error;

    .line 243
    sget-object v3, Lmobisocial/omlib/api/OmletApiManager$Error;->BINDING_EXCEPTION:Lmobisocial/omlib/api/OmletApiManager$Error;

    invoke-interface {v0, v3}, Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;->onApiError(Lmobisocial/omlib/api/OmletApiManager$Error;)V

    goto :goto_d

    .line 246
    .end local v0    # "l":Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;
    :cond_34
    iget-object v1, p0, Lmobisocial/omlib/api/OmletApiManager$1;->this$0:Lmobisocial/omlib/api/OmletApiManager;

    # getter for: Lmobisocial/omlib/api/OmletApiManager;->mListeners:Ljava/util/Set;
    invoke-static {v1}, Lmobisocial/omlib/api/OmletApiManager;->access$100(Lmobisocial/omlib/api/OmletApiManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 247
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_25

    .line 248
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/api/OmletApiManager$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
