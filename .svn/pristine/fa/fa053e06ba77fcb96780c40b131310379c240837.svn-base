.class public abstract Lcom/duoku/platform/download/apapter/AbstractListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnIgnoreClickListener;,
        Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;,
        Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnUpdateTipClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public ignoreClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnIgnoreClickListener;

.field protected mContext:Landroid/content/Context;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mLock:[I

.field private mNotifyOnChange:Z

.field protected onListItemClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;

.field public tipClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnUpdateTipClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mNotifyOnChange:Z

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mLock:[I

    .line 25
    iput-object p1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mContext:Landroid/content/Context;

    .line 26
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    .line 28
    return-void
.end method

.method private notifyChanged()V
    .registers 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    .line 158
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mLock:[I

    monitor-enter v1

    .line 135
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 137
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-boolean v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_13

    .line 140
    invoke-direct {p0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyChanged()V

    .line 133
    :cond_13
    monitor-exit v1

    .line 145
    return-void

    .line 133
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mLock:[I

    monitor-enter v1

    .line 164
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 166
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    iget-boolean v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_13

    .line 168
    invoke-direct {p0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyChanged()V

    .line 162
    :cond_13
    monitor-exit v1

    .line 172
    return-void

    .line 162
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mLock:[I

    monitor-enter v1

    .line 178
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 180
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-boolean v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_13

    .line 182
    invoke-direct {p0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyChanged()V

    .line 176
    :cond_13
    monitor-exit v1

    .line 186
    return-void

    .line 176
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_6

    .line 103
    const/4 v0, 0x0

    .line 107
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    .line 116
    :cond_c
    const/4 v0, 0x0

    .line 120
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 232
    return-void
.end method

.method public remove(I)V
    .registers 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mLock:[I

    monitor-enter v1

    .line 210
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 212
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 213
    iget-boolean v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_13

    .line 214
    invoke-direct {p0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyChanged()V

    .line 208
    :cond_13
    monitor-exit v1

    .line 217
    return-void

    .line 208
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mLock:[I

    monitor-enter v1

    .line 197
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 199
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-boolean v0, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_13

    .line 201
    invoke-direct {p0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyChanged()V

    .line 195
    :cond_13
    monitor-exit v1

    .line 204
    return-void

    .line 195
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->data:Ljava/util/List;

    .line 90
    invoke-direct {p0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyChanged()V

    .line 91
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .registers 2

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->mNotifyOnChange:Z

    .line 222
    return-void
.end method

.method public setOnIgnoreClickListener(Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnIgnoreClickListener;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->ignoreClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnIgnoreClickListener;

    .line 58
    return-void
.end method

.method public setOnListItemClickListener(Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->onListItemClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;

    .line 78
    return-void
.end method

.method public setOnUpdateTipClickListener(Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnUpdateTipClickListener;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->tipClickListener:Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnUpdateTipClickListener;

    .line 38
    return-void
.end method
