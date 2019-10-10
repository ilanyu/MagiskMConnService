.class public final Lcom/xiaomi/accountsdk/utils/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/DateUtils$DateFormatHolder;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"

.field public static final b:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final c:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final d:Ljava/util/TimeZone;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    .line 71
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/DateUtils;->e:[Ljava/lang/String;

    const-string v0, "GMT"

    .line 79
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/DateUtils;->d:Ljava/util/TimeZone;

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/xiaomi/accountsdk/utils/DateUtils;->d:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    .line 84
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 86
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/DateUtils;->f:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 177
    invoke-static {p0, v0}, Lcom/xiaomi/accountsdk/utils/DateUtils;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_15

    if-eqz p1, :cond_d

    .line 197
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/DateUtils$DateFormatHolder;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    .line 198
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pattern is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "date is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0, v0}, Lcom/xiaomi/accountsdk/utils/DateUtils;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-static {p0, p1, v0}, Lcom/xiaomi/accountsdk/utils/DateUtils;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p0, :cond_57

    if-nez p1, :cond_6

    .line 139
    sget-object p1, Lcom/xiaomi/accountsdk/utils/DateUtils;->e:[Ljava/lang/String;

    :cond_6
    if-nez p2, :cond_a

    .line 142
    sget-object p2, Lcom/xiaomi/accountsdk/utils/DateUtils;->f:Ljava/util/Date;

    .line 146
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    const-string v0, "\'"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "\'"

    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 153
    :cond_2a
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_40

    aget-object v3, p1, v2

    .line 154
    invoke-static {v3}, Lcom/xiaomi/accountsdk/utils/DateUtils$DateFormatHolder;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    .line 155
    invoke-virtual {v3, p2}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 158
    :try_start_38
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_3c
    .catch Ljava/text/ParseException; {:try_start_38 .. :try_end_3c} :catch_3d

    return-object v3

    :catch_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 165
    :cond_40
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse the date "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 136
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dateValue is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
