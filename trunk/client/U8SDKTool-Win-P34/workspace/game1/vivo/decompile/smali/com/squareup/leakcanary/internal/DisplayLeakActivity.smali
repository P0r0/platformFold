.class public final Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.super Landroid/app/Activity;
.source "DisplayLeakActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;,
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;,
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    }
.end annotation


# static fields
.field private static final SHOW_LEAK_EXTRA:Ljava/lang/String; = "show_latest"

.field private static final TAG:Ljava/lang/String; = "DisplayLeakActivity"


# instance fields
.field private actionButton:Landroid/widget/Button;

.field private failureView:Landroid/widget/TextView;

.field private leaks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private maxStoredLeaks:I

.field private visibleLeakRefKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->maxStoredLeaks:I

    return v0
.end method

.method static synthetic access$2(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .registers 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    return-void
.end method

.method static access$2(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/util/List;)V
    .registers 2
    .param p0, "displayLeakActivity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
    .param p1, "leaks"    # Ljava/util/List;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    .line 296
    return-void
.end method

.method static synthetic access$3(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->shareLeak()V

    return-void
.end method

.method static synthetic access$4(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->shareHeapDump()V

    return-void
.end method

.method static synthetic access$5(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .registers 2

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    return-object v0
.end method

.method static access$7(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "displayLeakActivity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
    .param p1, "visibleLeakRefKey"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 300
    return-void
.end method

.method static classSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 287
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 288
    .local v0, "separator":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 291
    .end local p0    # "className":Ljava/lang/String;
    :goto_9
    return-object p0

    .restart local p0    # "className":Ljava/lang/String;
    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method public static createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referenceKey"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_latest"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    if-nez v2, :cond_7

    move-object v0, v1

    .line 283
    :goto_6
    return-object v0

    .line 278
    :cond_7
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    move-object v0, v1

    .line 283
    goto :goto_6

    .line 278
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    .line 279
    .local v0, "leak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v3, v3, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6
.end method

.method private shareHeapDump()V
    .registers 6

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 171
    .local v2, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v0, v3, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    .line 172
    .local v0, "heapDumpFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "application/octet-stream"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const-string v3, "Share with\u2026"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method private shareLeak()V
    .registers 7

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 162
    .local v2, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v4, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Lcom/squareup/leakcanary/LeakCanary;->leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "leakInfo":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v3, "Share with\u2026"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method private updateUi()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 180
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    if-nez v8, :cond_e

    .line 181
    const-string v6, "Loading leaks..."

    invoke-virtual {p0, v6}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    :goto_d
    return-void

    .line 184
    :cond_e
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 185
    iput-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 187
    :cond_18
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v5

    .line 188
    .local v5, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    if-nez v5, :cond_20

    .line 189
    iput-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 191
    :cond_20
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 192
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 193
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    if-eqz v5, :cond_d8

    .line 195
    iget-object v4, v5, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    .line 196
    .local v4, "result":Lcom/squareup/leakcanary/AnalysisResult;
    iget-object v8, v4, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-eqz v8, :cond_76

    .line 197
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 198
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Please report this failure to http://github.com/square/leakcanary\\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-static {v9}, Lcom/squareup/utils/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const-string v6, "Leak analysis failed"

    invoke-virtual {p0, v6}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 202
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    const-string v7, "Delete"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_d

    .line 208
    :cond_76
    instance-of v6, v3, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    if-eqz v6, :cond_aa

    move-object v0, v3

    .line 209
    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    .line 234
    .local v0, "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    :goto_7d
    iget-object v2, v5, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    .line 235
    .local v2, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    iget-object v6, v4, Lcom/squareup/leakcanary/AnalysisResult;->leakTrace:Lcom/squareup/leakcanary/LeakTrace;

    iget-object v7, v2, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v8, v2, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->update(Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v7}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " has leaked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 212
    .end local v0    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    .end local v2    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    :cond_aa
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    invoke-direct {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;-><init>()V

    .line 213
    .restart local v0    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    new-instance v8, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;

    invoke-direct {v8, p0, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;)V

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 220
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    const-string v7, "Delete"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v6, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    new-instance v7, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;

    invoke-direct {v7, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7d

    .line 240
    .end local v0    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    .end local v4    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_d8
    instance-of v8, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    if-eqz v8, :cond_f0

    .line 241
    check-cast v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->notifyDataSetChanged()V

    .line 270
    :goto_e1
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_12f

    :goto_eb
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_d

    .line 244
    .restart local v3    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_f0
    new-instance v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    invoke-direct {v1, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 245
    .local v1, "adapter2":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    new-instance v9, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;

    invoke-direct {v9, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 252
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Leaks in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    const-string v9, "Delete All"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    new-instance v9, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;

    invoke-direct {v9, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e1

    .end local v1    # "adapter2":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_12f
    move v6, v7

    .line 270
    goto :goto_eb
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 158
    :goto_a
    return-void

    .line 156
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x103006b

    invoke-virtual {p0, v2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTheme(I)V

    .line 75
    if-eqz p1, :cond_6b

    .line 76
    const-string v2, "visibleLeakRefKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 84
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    .line 85
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const-string v2, "#303030"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    .line 89
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setContentView(Landroid/view/View;)V

    .line 96
    const/16 v2, 0x64

    iput v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->maxStoredLeaks:I

    .line 97
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 98
    return-void

    .line 79
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_6b
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "show_latest"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 81
    const-string v2, "show_latest"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    goto :goto_15
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 125
    const-string v0, "Share info"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;

    invoke-direct {v1, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 131
    const-string v0, "Share heap dump"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;

    invoke-direct {v1, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 120
    invoke-static {}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->forgetActivity()V

    .line 121
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_f

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 147
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    invoke-static {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 112
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "visibleLeakRefKey"

    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setTheme(I)V
    .registers 2
    .param p1, "resid"    # I

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 116
    return-void
.end method
