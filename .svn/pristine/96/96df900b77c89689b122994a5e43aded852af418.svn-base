.class Lcom/duoku/platform/ui/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e2

    .line 154
    :cond_9
    :goto_9
    :pswitch_9
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 155
    return-void

    .line 92
    :pswitch_d
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    .line 94
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getCount()I

    move-result v0

    if-ge v0, v4, :cond_9

    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    .line 100
    :pswitch_2c
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 101
    if-eqz v0, :cond_41

    .line 103
    iget-object v1, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v1, v1, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v1}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a(II)V

    .line 106
    :cond_41
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getCount()I

    move-result v0

    if-ge v0, v4, :cond_58

    .line 108
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_58

    .line 110
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    :cond_58
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    check-cast v0, Lcom/duoku/platform/download/apapter/DownloadAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getSuccessfulCount()I

    move-result v0

    if-ne v1, v0, :cond_7a

    .line 116
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    .line 123
    :cond_7a
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 126
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    .line 131
    :pswitch_88
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v1, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->remove(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    .line 134
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v0}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/ui/b;)V

    goto/16 :goto_9

    .line 137
    :pswitch_a1
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 141
    :try_start_a9
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/duoku/platform/ui/b$1;->a:Lcom/duoku/platform/ui/b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_dc} :catch_de

    goto/16 :goto_9

    .line 146
    :catch_de
    move-exception v0

    goto/16 :goto_9

    .line 89
    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_88
        :pswitch_9
        :pswitch_a1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method
