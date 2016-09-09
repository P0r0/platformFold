.class final Lcom/bbk/payment/aw;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/bbk/payment/TicketActivity;


# direct methods
.method private constructor <init>(Lcom/bbk/payment/TicketActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbk/payment/TicketActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbk/payment/aw;-><init>(Lcom/bbk/payment/TicketActivity;)V

    return-void
.end method

.method private varargs a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 6

    new-instance v1, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-direct {v1, v0}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    const-string v2, "https://pay.vivo.com.cn/vcoin/queryUserTickets"

    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {v1, v2, p1}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_23

    move-result-object v0

    :goto_e
    const-string v1, "TicketActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground ----------------------resultInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_23
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-direct {p0, p1}, Lcom/bbk/payment/aw;->a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 8

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->d(Lcom/bbk/payment/TicketActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    if-eqz p1, :cond_160

    :try_start_11
    const-string v0, "TicketActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "respMsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "200"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    const-string v0, "TicketActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDataSource.size()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->e(Lcom/bbk/payment/TicketActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0, p1}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->e(Lcom/bbk/payment/TicketActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_c2

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->d(Lcom/bbk/payment/TicketActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->b(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->c(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->f(Lcom/bbk/payment/TicketActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->g(Lcom/bbk/payment/TicketActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_has_no_ticket"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c1
    return-void

    :cond_c2
    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->d(Lcom/bbk/payment/TicketActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->b(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->c(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_f6} :catch_f7

    goto :goto_c1

    :catch_f7
    move-exception v0

    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->b(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->c(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->f(Lcom/bbk/payment/TicketActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v2}, Lcom/bbk/payment/TicketActivity;->g(Lcom/bbk/payment/TicketActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v3}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_msg_server_failed"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c1

    :cond_136
    :try_start_136
    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->b(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->c(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->f(Lcom/bbk/payment/TicketActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c1

    :cond_160
    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->b(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->c(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->f(Lcom/bbk/payment/TicketActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v1}, Lcom/bbk/payment/TicketActivity;->g(Lcom/bbk/payment/TicketActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-virtual {v2}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "bbk_msg_server_failed"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_19e} :catch_f7

    goto/16 :goto_c1
.end method

.method protected final onPreExecute()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->a(Lcom/bbk/payment/TicketActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->b(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/aw;->a:Lcom/bbk/payment/TicketActivity;

    invoke-static {v0}, Lcom/bbk/payment/TicketActivity;->c(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
