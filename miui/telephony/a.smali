.class public Lmiui/telephony/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 13
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_8
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->a(Ljava/lang/String;)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object v0

    .line 23
    iget v1, v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 24
    iget-object p0, v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->e:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 25
    new-instance v1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    iget v0, v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->d:I

    invoke-direct {v1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    return-object p0
.end method
