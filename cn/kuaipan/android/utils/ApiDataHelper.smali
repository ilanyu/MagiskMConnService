.class public Lcn/kuaipan/android/utils/ApiDataHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ApiDataHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7a127

    :try_start_3
    const-string v1, "PARSER"

    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_10} :catch_58
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_10} :catch_41
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_10} :catch_2a

    if-eqz v1, :cond_13

    return-object v1

    .line 128
    :cond_13
    new-instance v1, Lcn/kuaipan/android/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IKscData protocol requires a IKscData.Creator object called  PARSER on class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw v1

    .line 123
    :catch_2a
    new-instance v1, Lcn/kuaipan/android/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IKscData protocol requires a IKscData.Creator object called  PARSER on class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw v1

    .line 119
    :catch_41
    new-instance v1, Lcn/kuaipan/android/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IKscData protocol requires a IKscData.Creator object called  PARSER on class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_58
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser Class not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApiDataHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    new-instance v1, Lcn/kuaipan/android/a/f;

    const v2, 0x7a126

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException when parser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs a(Lcn/kuaipan/android/http/f;Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;",
            ">(",
            "Lcn/kuaipan/android/http/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    const v0, 0x7a50b

    .line 75
    :try_start_3
    invoke-static {p2}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Ljava/lang/Class;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;

    move-result-object p2

    .line 76
    invoke-interface {p2, p1, p3}, Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;->a(Ljava/util/Map;[Ljava/lang/String;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;

    move-result-object p1
    :try_end_b
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_b} :catch_32
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_1c
    .catch Lcn/kuaipan/android/a/f; {:try_start_3 .. :try_end_b} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 86
    new-instance p2, Lcn/kuaipan/android/a/f;

    const p3, 0x62a1f

    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0, p1}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1a
    move-exception p0

    .line 84
    throw p0

    :catch_1c
    move-exception p1

    .line 82
    new-instance p2, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_27
    move-exception p1

    .line 80
    new-instance p2, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_32
    move-exception p1

    .line 78
    new-instance p2, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static varargs a(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;
        }
    .end annotation

    const v0, 0x7a50b

    .line 93
    :try_start_3
    invoke-static {p2}, Lcn/kuaipan/android/utils/ApiDataHelper;->a(Ljava/lang/Class;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;

    move-result-object p2

    .line 94
    invoke-interface {p2, p1, p3}, Lcn/kuaipan/android/utils/ApiDataHelper$IKscData$Parser;->a(Ljava/util/Map;[Ljava/lang/String;)Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;

    move-result-object p1
    :try_end_b
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_b} :catch_32
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_1c
    .catch Lcn/kuaipan/android/a/f; {:try_start_3 .. :try_end_b} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 104
    new-instance p2, Lcn/kuaipan/android/a/f;

    const p3, 0x62a1f

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0, p1}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1a
    move-exception p0

    .line 102
    throw p0

    :catch_1c
    move-exception p1

    .line 100
    new-instance p2, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_27
    move-exception p1

    .line 98
    new-instance p2, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_32
    move-exception p1

    .line 96
    new-instance p2, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    .line 163
    :cond_3
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_a

    .line 164
    check-cast p0, Ljava/lang/Number;

    goto :goto_20

    .line 166
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 168
    :try_start_e
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_18

    move-object p0, p1

    goto :goto_20

    .line 170
    :catch_18
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_20
    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_24

    .line 140
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Miss required data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DataMap can\'t be null when parse."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    if-nez p0, :cond_3

    return-object p1

    .line 200
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/kuaipan/android/utils/l;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/kuaipan/android/http/f;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/kuaipan/android/http/f;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const v0, 0x7a50b

    const v1, 0x7a509

    const/4 v2, 0x0

    .line 44
    :try_start_7
    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->c()Ljava/io/InputStream;

    move-result-object v3
    :try_end_b
    .catch Landroid/util/MalformedJsonException; {:try_start_7 .. :try_end_b} :catch_64
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_b} :catch_59
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_4f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_b} :catch_44
    .catchall {:try_start_7 .. :try_end_b} :catchall_42

    if-eqz v3, :cond_29

    .line 49
    :try_start_d
    invoke-static {v3}, Lcn/kuaipan/android/utils/i;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1f

    .line 50
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4
    :try_end_19
    .catch Landroid/util/MalformedJsonException; {:try_start_d .. :try_end_19} :catch_3f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_19} :catch_3c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_39
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_19} :catch_36
    .catchall {:try_start_d .. :try_end_19} :catchall_33

    if-nez v4, :cond_1f

    .line 65
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_1e

    :catch_1e
    return-object v2

    .line 51
    :cond_1f
    :try_start_1f
    new-instance v2, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw v2

    .line 46
    :cond_29
    new-instance v2, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_33
    .catch Landroid/util/MalformedJsonException; {:try_start_1f .. :try_end_33} :catch_3f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_33} :catch_3c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_39
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_33} :catch_36
    .catchall {:try_start_1f .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    move-object v2, v3

    goto :goto_6f

    :catch_36
    move-exception v1

    move-object v2, v3

    goto :goto_45

    :catch_39
    move-exception v0

    move-object v2, v3

    goto :goto_50

    :catch_3c
    move-exception v0

    move-object v2, v3

    goto :goto_5a

    :catch_3f
    move-exception v0

    move-object v2, v3

    goto :goto_65

    :catchall_42
    move-exception p0

    goto :goto_6f

    :catch_44
    move-exception v1

    .line 62
    :goto_45
    :try_start_45
    new-instance v3, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v0, p0, v1}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4f
    move-exception v0

    .line 60
    :goto_50
    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p0

    throw p0

    :catch_59
    move-exception v0

    .line 58
    :goto_5a
    new-instance v3, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v1, p0, v0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_64
    move-exception v0

    .line 56
    :goto_65
    new-instance v3, Lcn/kuaipan/android/a/e;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->f()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v1, p0, v0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6f
    .catchall {:try_start_45 .. :try_end_6f} :catchall_42

    .line 65
    :goto_6f
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_72

    .line 68
    :catch_72
    throw p0
.end method

.method public static a(Ljava/lang/Object;Z)Z
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 183
    :cond_3
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_e

    .line 184
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_26

    .line 185
    :cond_e
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1e

    .line 186
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_26

    :cond_1c
    const/4 p0, 0x0

    goto :goto_26

    .line 188
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 189
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    :goto_26
    return p0
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_f

    .line 152
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 154
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0

    .line 150
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DataMap can\'t be null when parse."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
