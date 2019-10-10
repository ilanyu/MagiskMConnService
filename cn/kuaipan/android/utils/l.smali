.class public Lcn/kuaipan/android/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static final b:Ljava/text/SimpleDateFormat;

.field private static final c:Ljava/text/ParsePosition;

.field private static final d:Ljava/lang/StringBuffer;

.field private static final e:Ljava/text/FieldPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/kuaipan/android/utils/l;->b:Ljava/text/SimpleDateFormat;

    .line 29
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    sput-object v0, Lcn/kuaipan/android/utils/l;->c:Ljava/text/ParsePosition;

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/l;->d:Ljava/lang/StringBuffer;

    .line 31
    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcn/kuaipan/android/utils/l;->e:Ljava/text/FieldPosition;

    .line 33
    sget-object v0, Lcn/kuaipan/android/utils/l;->b:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+0800"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .registers 4

    .line 16
    sget-wide v0, Lcn/kuaipan/android/utils/l;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 20
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcn/kuaipan/android/utils/l;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .registers 6

    const-class v0, Lcn/kuaipan/android/utils/l;

    monitor-enter v0

    if-nez p0, :cond_7

    .line 38
    monitor-exit v0

    return-object p1

    .line 43
    :cond_7
    :try_start_7
    sget-object v1, Lcn/kuaipan/android/utils/l;->c:Ljava/text/ParsePosition;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 44
    sget-object v1, Lcn/kuaipan/android/utils/l;->c:Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 45
    sget-object v1, Lcn/kuaipan/android/utils/l;->b:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcn/kuaipan/android/utils/l;->c:Ljava/text/ParsePosition;

    invoke-virtual {v1, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 46
    sget-object v3, Lcn/kuaipan/android/utils/l;->c:Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-ne v3, v2, :cond_2f

    .line 50
    sget-object v2, Lcn/kuaipan/android/utils/l;->c:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_48
    .catchall {:try_start_7 .. :try_end_29} :catchall_46

    if-nez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object p1, v1

    .line 56
    :goto_2d
    monitor-exit v0

    return-object p1

    .line 47
    :cond_2f
    :try_start_2f
    new-instance p1, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_46} :catch_48
    .catchall {:try_start_2f .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p0

    goto :goto_5f

    .line 54
    :catch_48
    :try_start_48
    new-instance p1, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_46

    .line 36
    :goto_5f
    monitor-exit v0

    throw p0
.end method

.method public static a(J)V
    .registers 4

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    .line 25
    sput-wide p0, Lcn/kuaipan/android/utils/l;->a:J

    return-void
.end method

.method public static declared-synchronized b(J)Ljava/lang/String;
    .registers 6

    const-class v0, Lcn/kuaipan/android/utils/l;

    monitor-enter v0

    .line 61
    :try_start_3
    sget-object v1, Lcn/kuaipan/android/utils/l;->d:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    sget-object v3, Lcn/kuaipan/android/utils/l;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 62
    sget-object v1, Lcn/kuaipan/android/utils/l;->b:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lcn/kuaipan/android/utils/l;->d:Ljava/lang/StringBuffer;

    sget-object p1, Lcn/kuaipan/android/utils/l;->e:Ljava/text/FieldPosition;

    invoke-virtual {v1, v2, p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    .line 60
    monitor-exit v0

    throw p0
.end method
