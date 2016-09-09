.class public Lcom/baidu/android/pushservice/e/x;
.super Lcom/baidu/android/pushservice/e/d;


# instance fields
.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/e/d;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/x;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected a(I[B)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v2, "method_list_lapp_tags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "com.baidu.android.pushservice.action.lapp.RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_16
    const-string v1, "method"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "error_msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "tags_list"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/x;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_38
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/x;->a(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v2, "method_list_lapp_tags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v2, "method_list_sdk_tags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    :goto_62
    return-void

    :cond_63
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v2, "method_list_sdk_tags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string v1, "com.baidu.android.pushservice.action.sdk.RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_16

    :cond_75
    const-string v1, "com.baidu.android.pushservice.action.RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_16

    :cond_7b
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v2, "method_list_lapp_tags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v2, "method_list_sdk_tags"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_9a
    const-string v1, "Glist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> sendResult to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/x;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,content : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/x;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/d;->a(Ljava/util/HashMap;)V

    const-string v0, "method"

    const-string v1, "glist"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Glist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Glist param -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/android/pushservice/e/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "response_params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "groups"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4b

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/x;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_2b} :catch_2e

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :catch_2e
    move-exception v0

    const-string v2, "Glist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    return-object v1
.end method
