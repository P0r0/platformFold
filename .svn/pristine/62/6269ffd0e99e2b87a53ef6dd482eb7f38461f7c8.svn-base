.class public abstract Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field _callback:Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;)V
    .registers 2
    .param p1, "callback"    # Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    .prologue
    .line 10
    .local p0, "this":Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;, "Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;->_callback:Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    .line 12
    return-void
.end method


# virtual methods
.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;, "Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;->_callback:Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    if-eqz v0, :cond_c

    .line 36
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;->_callback:Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    invoke-interface {v0, p1}, Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;->onTaskCancelled(Ljava/lang/Object;)V

    .line 38
    :cond_c
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;, "Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;->_callback:Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    if-eqz v0, :cond_c

    .line 28
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;->_callback:Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    invoke-interface {v0, p1}, Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;->onTaskComplete(Ljava/lang/Object;)V

    .line 30
    :cond_c
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;, "Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;->_callback:Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    if-eqz v0, :cond_c

    .line 20
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/media/BaseAsyncTask;->_callback:Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;

    invoke-interface {v0, p1}, Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;->onProgressUpdate([Ljava/lang/Object;)V

    .line 22
    :cond_c
    return-void
.end method
