.class Lcom/baidu/android/pushservice/richmedia/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/richmedia/MediaListActivity;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/richmedia/MediaListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/richmedia/c;->a:Lcom/baidu/android/pushservice/richmedia/MediaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/android/pushservice/richmedia/MediaListActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/c;->a:Lcom/baidu/android/pushservice/richmedia/MediaListActivity;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/util/n$g;

    move-result-object v0

    if-eqz v0, :cond_72

    iget v1, v0, Lcom/baidu/android/pushservice/util/n$g;->i:I

    sget v2, Lcom/baidu/android/pushservice/richmedia/a;->f:I

    if-ne v1, v2, :cond_73

    iget-object v1, v0, Lcom/baidu/android/pushservice/util/n$g;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/android/pushservice/util/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_72

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/baidu/android/pushservice/richmedia/c;->a:Lcom/baidu/android/pushservice/richmedia/MediaListActivity;

    const-class v3, Lcom/baidu/android/pushservice/richmedia/MediaViewActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/android/pushservice/richmedia/c;->a:Lcom/baidu/android/pushservice/richmedia/MediaListActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/richmedia/MediaListActivity;->startActivity(Landroid/content/Intent;)V

    :cond_72
    :goto_72
    return-void

    :cond_73
    iget-object v1, p0, Lcom/baidu/android/pushservice/richmedia/c;->a:Lcom/baidu/android/pushservice/richmedia/MediaListActivity;

    iget-object v2, v0, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/android/pushservice/util/n$g;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/android/pushservice/util/n$g;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/android/pushservice/richmedia/MediaListActivity;->a(Lcom/baidu/android/pushservice/richmedia/MediaListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72
.end method
