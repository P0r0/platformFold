.class Lcom/baidu/wallet/core/utils/support/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/utils/support/SmsContent;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/utils/support/SmsContent;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;->a(Lcom/baidu/wallet/core/utils/support/SmsContent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "address"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v3, "body"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "read"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "date"

    aput-object v3, v2, v0

    :try_start_30
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;->b(Lcom/baidu/wallet/core/utils/support/SmsContent;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_41} :catch_160
    .catchall {:try_start_30 .. :try_end_41} :catchall_172

    move-result-object v1

    if-nez v1, :cond_4f

    if-eqz v1, :cond_f

    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_f

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :cond_4f
    :try_start_4f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_153

    const-string v0, "date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_153

    const-string v2, "body"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_74} :catch_181
    .catchall {:try_start_4f .. :try_end_74} :catchall_17f

    move-result-wide v4

    const-wide/32 v6, 0x15f90

    cmp-long v0, v4, v6

    if-lez v0, :cond_87

    if-eqz v1, :cond_f

    :try_start_7e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_f

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;->a(Lcom/baidu/wallet/core/utils/support/SmsContent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_153

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/support/SmsContent;->b(Lcom/baidu/wallet/core/utils/support/SmsContent;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "@timeSms"

    const-string v4, ""

    const-string v5, "0"

    invoke-static {v2, v3, v4, v5}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_153

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b4} :catch_181
    .catchall {:try_start_87 .. :try_end_b4} :catchall_17f

    move-result v2

    if-eqz v2, :cond_c4

    if-eqz v1, :cond_f

    :try_start_b9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_be

    goto/16 :goto_f

    :catch_be
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_c4
    :try_start_c4
    const-string v2, "\\d{4,6}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cd} :catch_181
    .catchall {:try_start_c4 .. :try_end_cd} :catchall_17f

    move-result-object v0

    if-nez v0, :cond_dd

    if-eqz v1, :cond_f

    :try_start_d2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_d7

    goto/16 :goto_f

    :catch_d7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_dd
    :try_start_dd
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_181
    .catchall {:try_start_dd .. :try_end_e0} :catchall_17f

    move-result v2

    if-nez v2, :cond_f0

    if-eqz v1, :cond_f

    :try_start_e5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_ea

    goto/16 :goto_f

    :catch_ea
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_f0
    const/4 v2, 0x0

    :try_start_f1
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string v0, "\u9a8c\u8bc1\u7801\u4e0d\u662f4,6\u4e3a\u6570\u5b57 \u4e0d\u8bc6\u522b"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_100} :catch_181
    .catchall {:try_start_f1 .. :try_end_100} :catchall_17f

    if-eqz v1, :cond_f

    :try_start_102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_107

    goto/16 :goto_f

    :catch_107
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_10d
    :try_start_10d
    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/support/SmsContent;->c(Lcom/baidu/wallet/core/utils/support/SmsContent;)Landroid/widget/EditText;
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_112} :catch_181
    .catchall {:try_start_10d .. :try_end_112} :catchall_17f

    move-result-object v2

    if-nez v2, :cond_122

    if-eqz v1, :cond_f

    :try_start_117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11c

    goto/16 :goto_f

    :catch_11c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_122
    :try_start_122
    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/support/SmsContent;->d(Lcom/baidu/wallet/core/utils/support/SmsContent;)Z
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_127} :catch_181
    .catchall {:try_start_122 .. :try_end_127} :catchall_17f

    move-result v2

    if-eqz v2, :cond_137

    if-eqz v1, :cond_f

    :try_start_12c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_12f} :catch_131

    goto/16 :goto_f

    :catch_131
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_137
    :try_start_137
    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/support/SmsContent;->a(Lcom/baidu/wallet/core/utils/support/SmsContent;Z)Z

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/support/SmsContent;->c(Lcom/baidu/wallet/core/utils/support/SmsContent;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/b;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;->b(Lcom/baidu/wallet/core/utils/support/SmsContent;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "recognizeSms"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_153} :catch_181
    .catchall {:try_start_137 .. :try_end_153} :catchall_17f

    :cond_153
    if-eqz v1, :cond_f

    :try_start_155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_158} :catch_15a

    goto/16 :goto_f

    :catch_15a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :catch_160
    move-exception v0

    move-object v1, v6

    :goto_162
    :try_start_162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_17f

    if-eqz v1, :cond_f

    :try_start_167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16c

    goto/16 :goto_f

    :catch_16c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :catchall_172
    move-exception v0

    move-object v1, v6

    :goto_174
    if-eqz v1, :cond_179

    :try_start_176
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_17a

    :cond_179
    :goto_179
    throw v0

    :catch_17a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_179

    :catchall_17f
    move-exception v0

    goto :goto_174

    :catch_181
    move-exception v0

    goto :goto_162
.end method
