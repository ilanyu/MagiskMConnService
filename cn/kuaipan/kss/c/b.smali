.class public Lcn/kuaipan/kss/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;
    .registers 2

    const-string v0, "phone"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 59
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_1c

    .line 80
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->b:Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0

    .line 78
    :pswitch_12
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->c:Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0

    .line 76
    :pswitch_15
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->d:Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0

    .line 66
    :pswitch_18
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->e:Lcn/kuaipan/kss/KssDef$NetState;

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 5

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 21
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_2e
    .catchall {:try_start_6 .. :try_end_18} :catchall_2c

    .line 23
    :goto_18
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_2a
    .catchall {:try_start_18 .. :try_end_21} :catchall_37

    goto :goto_18

    .line 30
    :cond_22
    invoke-static {v2}, Lcn/kuaipan/kss/c/b;->a(Ljava/io/BufferedReader;)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2a
    move-exception p0

    goto :goto_30

    :catchall_2c
    move-exception p0

    goto :goto_39

    :catch_2e
    move-exception p0

    move-object v2, v1

    .line 27
    :goto_30
    :try_start_30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 30
    invoke-static {v2}, Lcn/kuaipan/kss/c/b;->a(Ljava/io/BufferedReader;)V

    return-object v1

    :catchall_37
    move-exception p0

    move-object v1, v2

    :goto_39
    invoke-static {v1}, Lcn/kuaipan/kss/c/b;->a(Ljava/io/BufferedReader;)V

    .line 31
    throw p0
.end method

.method public static a(Ljava/io/BufferedReader;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 39
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 49
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method
